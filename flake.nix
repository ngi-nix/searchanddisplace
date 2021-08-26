{
  description =
    "Search and displace core module including the interface to select files and search and displace operations to run on them";

  ## NOTE: to be replaced by `self` if flake is adopted upstream
  #inputs.searchanddisplace-core = {
    #url = "git+https://git.law/newroco/searchanddisplace-core";
    #flake = false;
  #};

  inputs.composer2nix = {
    url = "git+https://github.com/svanderburg/composer2nix";
    flake = false;
  };

  inputs.nixpkgs.url = "nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs, composer2nix }:
    let
      # Generate a user-friendly version numer.
      version = "${builtins.substring 0 8 self.lastModifiedDate}-${
          self.shortRev or "dirty"
        }";
      # System types to support.
      supportedSystems = [ "x86_64-linux" ];
      # Helper function to generate an attrset '{ x86_64-linux = f "x86_64-linux"; ... }'.
      forAllSystems = f:
        nixpkgs.lib.genAttrs supportedSystems (system: f system);
      # Nixpkgs instantiated for supported system types.
      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        });
    in {
      overlay = final: prev: {
        searchanddisplace-php = with final;
          final.callPackage ({ inShell ? false }:
            stdenv.mkDerivation rec {
              name = "searchanddisplace-php";
              #phpPackage = callPackage ./php/default.nix{};
              #src = ./php;
              src = ./.;
              #src = ./.;
              buildInputs = [ composer2nix ];
            }) { };
      };

      # Provide some binary packages for selected system types.
      packages = forAllSystems
        (system: { inherit (nixpkgsFor.${system}) searchanddisplace-php; });

      defaultPackage = forAllSystems (system: self.packages.${system}.searchanddisplace-php);


      devShell = forAllSystems (system:
        self.packages.${system}.searchanddisplace-php.override {
          inShell = true;
        });

    };
}
