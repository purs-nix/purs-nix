with builtins;
let
  fix = f: let x = f x; in x;

  input-name = nodes: str-or-list:
    let
      attrsomething = nodes: path:
        let
          f = current: path:
            if path == [] then
              current
            else
              let inherit (nodes.${current}) inputs; in
              f (input-name nodes inputs.${head path}) (tail path);
        in
        f (head path) (tail path);
    in
    if isString str-or-list then
      str-or-list
    else
      attrsomething nodes str-or-list;

  attrs-to-list = attrs:
    map (name: { inherit name; value = attrs.${name}; }) (attrNames attrs);

  get-input-path = locked:
    if locked.type == "path" then
      locked.path
    else
      let inherit (locked) narHash owner repo rev type; in
      if type == "github" then
        fetchTarball
          { url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
            sha256 = narHash;
          }
      else if type == "gitlab" then
        fetchTarball
          { url = "https://gitlab.com/${owner}/${repo}/-/archive/${rev}/nix-css-${rev}.tar.gz";
            sha256 = narHash;
          }
      else
        abort "i only know how to handle github, gitlab, and path inputs right now";
in
# { dir }:
dir:
  if (readDir dir)?"flake.lock" then
    let
      log = a: trace a a;
      lock = fromJSON (readFile (dir + "/flake.lock"));
      root = lock.root;
      input-name' = input-name lock.nodes;

      build = is-flake: path: inputs:
        if is-flake then
          let flake = import (path + "/flake.nix"); in
          fix
            (self:
               let outputs = flake.outputs (inputs // { inherit self; }); in
               flake
               // { inherit inputs outputs; }
               // outputs
               // { outPath = path; }
            )
        else
          path;

      tuple = fst: snd: { inherit fst snd; };
      deroot = removeAttrs lock.nodes [ root ];

      f = built: left:
        let
          thing =
            foldl'
              (acc: { name, value }:
                 if !value?inputs then
                   tuple
                     (acc.fst
                      // { ${name} =
                             build
                               (value.flake or true)
                               (get-input-path value.locked)
                               {};
                         }
                     )
                     (removeAttrs acc.snd [ name ])
                 else if all (a: acc.fst?${input-name' a}) (attrValues value.inputs) then
                   tuple
                     (acc.fst
                      // { ${name} =
                             build
                               (value.flake or true)
                               (get-input-path value.locked)
                               (mapAttrs
                                  (_: v: acc.fst.${input-name' v})
                                  value.inputs
                               );
                         }
                     )
                     (removeAttrs acc.snd [ name ])
                 else
                   acc
              )
              (tuple built left)
              (attrs-to-list left);
        in
        if thing.snd == {} then
          mapAttrs
            (_: v: thing.fst.${v})
            lock.nodes.${root}.inputs
        else f thing.fst thing.snd;
    in
    build true dir (f {} deroot)
  else
    let flake = import (dir + "/flake.nix"); in
      fix
        (self:
           let outputs = flake.outputs { inherit self; }; in
           flake // { inherit outputs; } // outputs
        )

