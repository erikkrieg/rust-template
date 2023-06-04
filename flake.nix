{
  description = "Development shell";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    rust-overlay.url = "github:oxalica/rust-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, rust-overlay, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
        rust = pkgs.rust-bin.selectLatestNightlyWith (toolchain: toolchain.default.override {
          extensions = [ "rust-src" ];
        });
      in
      with pkgs;
      {
        devShells.default = mkShell {
          nativeBuildInputs = [
            rust
            rust-analyzer-unwrapped
          ];
          shellHook = ''
            export RUST_SRC_PATH="${rust}/lib/rustlib/src/rust/library";
          '';
        };
      }
    );
}
