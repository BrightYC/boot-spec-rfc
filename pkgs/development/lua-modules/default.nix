# inspired by pkgs/development/haskell-modules/default.nix
{ pkgs, lib
, lua
, overrides ? (final: prev: {})
}:

let

  inherit (lib) extends;

  initialPackages = (pkgs.callPackage ../../top-level/lua-packages.nix {
    inherit lua;
  });

  overridenPackages = import ./overrides.nix { inherit pkgs; };

  generatedPackages = if (builtins.pathExists ./generated-packages.nix) then
        pkgs.callPackage ./generated-packages.nix { } else (final: prev: {});

  extensible-self = lib.makeExtensible
    (extends overrides
        (extends overridenPackages
          (extends generatedPackages
              initialPackages
              )
          )
    );
in
  extensible-self
