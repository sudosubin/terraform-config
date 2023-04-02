{
  description = "sudosubin/terraform-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };

          envs = [
            {
              name = "TF_CLI_CONFIG_FILE";
              value = "$HOME/.config/terraform/config.sudosubin.tfrc";
            }
          ];

        in
        {
          devShell = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              terraform
            ];

            shellHook = ''
              PATH="${pkgs.jq}/bin:$PATH" source ./.tools/nix-to-envs.sh '${builtins.toJSON envs}';
              PATH="${pkgs.flyctl}/bin:${pkgs.hcl2json}/bin:${pkgs.jq}/bin:$PATH" ./.tools/nix-to-tfvars.sh;
            '';
          };
        }
      );
}
