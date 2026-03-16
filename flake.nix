{
  description = "Sigstore common Go library for signing, verification, and OIDC Fulcio client";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    substrate = {
      url = "github:pleme-io/substrate";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "go";
    builder = "library";
    pname = "sigstore";
    vendorHash = "sha256-yCoSdz9HKf6rFWdv3Dyui4bHq6av6nrNIXqwpBpxCDA=";
    description = "Sigstore common Go library for signing, verification, and OIDC Fulcio client";
    homepage = "https://github.com/pleme-io/sigstore";
  };
}
