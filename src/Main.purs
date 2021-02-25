module Main (main) where

import MasonPrelude
import Attribute as A
import Css as C
import Css.Global as CG
import Effect.Exception (Error, throw)
import Html (Html)
import Html as H
import Node.Globals (__dirname)
import Node.Path as Path
import Parser (Link, zettelParser)
import Platform
  ( Cmd
  , Program
  , Update
  , afterRender
  , attemptTask
  , tell
  )
import Platform as Platform
import Task.File as File
import Text as T
import Text (textIn)
import Text.Parsing.StringParser (runParser)

main :: Program Unit Msg Model
main =
  Platform.app
    { init
    , update
    , view
    , subscriptions: mempty
    }

type Model
  = { id :: String
    , zettel :: String
    }

init :: Unit -> Update Msg Model
init _ = pure { id: "1611461186", zettel: "" }

data Msg
  = UpdateId String
  | GetZettel
  | ZettelReceived (Error \/ String)
  | ToZettel String

foreign import typeset :: Effect Unit

update :: Model -> Msg -> Update Msg Model
update model = case _ of
  ToZettel id -> do
    tell $ fetchZettel id
    pure model
  ZettelReceived result -> case result of
    Right zettel -> do
      afterRender typeset
      pure $ model { zettel = zettel }
    Left e -> do
      logShow e
      pure model
  GetZettel -> do
    tell $ fetchZettel model.id
    pure model
  UpdateId id -> pure $ model { id = id }

view ::
  Model ->
  { head :: Array (Html Msg)
  , body :: Array (Html Msg)
  }
view model =
  { head:
      [ H.style [ CG.body [ C.whiteSpace "pre-wrap" ] ] ]
  , body:
      [ H.div []
          [ H.input [ A.onInput UpdateId ]
          , H.button [ A.onClick GetZettel ] [ H.text "Go" ]
          ]
      , H.noDiff "div" [] case runParser (zettelParser H.text mkInlineLink mkSectionLInk) model.zettel of
          Right html -> html
          Left _ -> [ H.text model.zettel ]
      ]
  }

fetchZettel :: String -> Cmd Msg
fetchZettel id = attemptTask ZettelReceived $ File.read $ Path.concat [ __dirname, "zettels/" <> id <> ".zk" ]

linkHtmlHelper :: (String -> Array (Html Msg)) -> Link -> Html Msg
linkHtmlHelper f { text, id } =
  H.spanS
    [ C.color "blue"
    , C.cursor "pointer"
    ]
    [ A.onClick $ ToZettel id ]
    (f text)

mkInlineLink :: Link -> Html Msg
mkInlineLink = linkHtmlHelper \text -> [ H.text text ]

mkSectionLInk :: Link -> Html Msg
mkSectionLInk =
  linkHtmlHelper \text ->
    [ H.text "\t"
    , H.text text
    , H.text "\n"
    ]
