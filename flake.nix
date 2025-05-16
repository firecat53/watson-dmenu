{
  description = "Control Watson time-tracker using dmenu/Rofi type launchers";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      systems = [
        "x86_64-linux"
        "i686-linux"
        "aarch64-linux"
      ];
      forAllSystems =
        f:
        nixpkgs.lib.genAttrs systems (
          system:
          f rec {
            pkgs = nixpkgs.legacyPackages.${system};
            commonPackages = builtins.attrValues {
              inherit (pkgs)
                watson
                ;
              inherit (pkgs.python3Packages)
                python
                ;
            };
          }
        );
    in
    {
      devShells = forAllSystems (
        {
          pkgs,
          commonPackages,
        }:
        {
          default = pkgs.mkShell {
            packages = commonPackages;
          };
        }
      );
      packages = forAllSystems (
        {
          pkgs,
          commonPackages,
        }:
        {
          default = pkgs.stdenv.mkDerivation {
            name = "watson_dmenu";
            pname = "watson_dmenu";
            dontBuild = true;
            src = ./.;
            buildInputs = commonPackages;
            installPhase = ''
              mkdir -p $out/bin $out/share/doc/$pname
              cp watson_dmenu $out/bin/
              cp README.md $out/share/doc/$pname/
            '';
            meta = {
              description = "Control Watson time-tracker using dmenu/Rofi type launchers";
              homepage = "https://github.com/firecat53/watson-dmenu";
              license = pkgs.lib.licenses.mit;
              maintainers = [ "firecat53" ];
              platforms = systems;
            };
          };
        }
      );
    };
}
