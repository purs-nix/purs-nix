module Parser where

import MasonPrelude
import Data.Array as Array
import Data.List ((:))
import Data.List as List
import Data.String (Pattern(..))
import Data.String as String
import Data.String.CodeUnits as StringC
import Text.Parsing.StringParser (Parser(..), ParseError(..), try)
import Text.Parsing.StringParser.CodeUnits as P
import Text.Parsing.StringParser.Combinators as PC

parseWhile :: Parser Char -> Parser String
parseWhile charParser = PC.many charParser <#> List.toUnfoldable .> fromCharArray

parseTo :: String -> Parser String
parseTo pattern =
  Parser \{ pos, str } ->
    let
      mSuccess = do
        i <- String.indexOf' (Pattern pattern) pos str
        result <- StringC.slice pos i str
        pure { result, suffix: { pos: i, str } }
    in
      case mSuccess of
        Just s -> Right s
        Nothing ->
          Left
            { error: ParseError $ "\"" <> pattern <> "\" is not contained in the string: " <> String.drop pos str
            , pos
            }

parseRest :: Parser String
parseRest =
  Parser \{ pos, str } ->
    Right
      { result: String.drop pos str
      , suffix: { pos: String.length str, str }
      }

type Link
  = { text :: String, id :: String }

inlineLinkParser :: Parser Link
inlineLinkParser = ado
  _ <- P.char '['
  text <- parseTo "]"
  _ <- P.string "]("
  id <- parseWhile P.anyDigit
  _ <- P.char ')'
  in { text, id }

parseToFirstLink :: Parser (String /\ Link)
parseToFirstLink = do
  start <- parseTo "["
  mLink <- PC.optionMaybe $ try inlineLinkParser
  case mLink of
    Just link -> pure $ start /\ link
    Nothing -> do
      _ <- P.char '['
      parseToFirstLink <#> \(s /\ l) -> (start <> "[" <> s) /\ l

linkSection :: String
linkSection = "links:"

linksParser :: Parser (List Link)
linksParser =
  P.string linkSection
    *> PC.many ado
        _ <- P.string "\n\t"
        id <- parseTo "\n"
        _ <- P.string "\n\t\t"
        text <- parseTo "\n"
        in { text, id }

zettelParser :: ∀ a. (String -> a) -> (Link -> a) -> (Link -> a) -> Parser (Array a)
zettelParser handleNormal handleInlineLink handleLink = do
  maybeInlineLinks <- PC.optionMaybe $ try $ PC.many parseToFirstLink
  maybeMiddleAndLinks <-
    PC.optionMaybe
      $ try ado
          middle <- parseTo linkSection
          links <- linksParser
          in middle /\ links
  rest <- parseRest
  pure case maybeInlineLinks, maybeMiddleAndLinks of
    Just inlineLinks, Just (middle /\ links) ->
      buildFirstPart inlineLinks middle
        <> buildSecondPart links rest
    Just inlineLinks, Nothing -> buildFirstPart inlineLinks rest
    Nothing, Just (start /\ links) ->
      Array.cons
        (handleNormal start)
        (buildSecondPart links rest)
    Nothing, Nothing -> [ handleNormal rest ]
  where
  buildFirstPart :: List (String /\ Link) -> String -> Array a
  buildFirstPart inlineLinks rest' =
    inlineLinks
      # foldr
          ( \(text /\ link) acc ->
              handleNormal text : handleInlineLink link : acc
          )
          (pure $ handleNormal rest')
      # List.toUnfoldable

  buildSecondPart :: List Link -> String -> Array a
  buildSecondPart links rest' =
    [ handleNormal $ linkSection <> "\n" ]
      <> (List.toUnfoldable $ handleLink <$> links)
      <> [ handleNormal rest' ]
