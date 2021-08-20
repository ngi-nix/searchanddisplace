{
  description =
    "Search and displace core module including the interface to select files and search and displace operations to run on them";


  # NOTE: to be replaced by `self` if flake is adopted upstream
  inputs.searchanddisplace-core = {
    url = "git+https://git.law/newroco/searchanddisplace-core";
    flake = false;
  };

  inputs.nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  inputs.flake-utils = {
    url = "github:numtide/flake-utils";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, searchanddisplace-core, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in with pkgs.lib; {
        devShell = pkgs.mkShell { buildInputs = [ pkgs.redis ]; };

        defaultPackage = pkgs.stdenv.mkDerivation {
          name = "searchanddisplace-core";

          buildInputs = [ pkgs.nodejs pkgs.php74Packages.composer ];

          src = searchanddisplace-core;
          doCheck = true;
          checkPhase = ''
            npm run test
          '';

          buildPhase = ''
            composer install
            npm install
          '';

          installPhase = ''
            mkdir -p $out
            mv . $out
          '';
        };
      });
}
