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

          tfvars-packages = pkgs.buildEnv {
            name = "tfvars-packages";
            paths = with pkgs; [ flyctl hcl2json jq ];
          };

        in
        {
          devShell = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              terraform
            ];

            shellHook = ''
              PATH="${pkgs.jq}/bin:$PATH" source ./.tools/nix-to-envs.sh '${builtins.toJSON envs}';
              PATH="${tfvars-packages}/bin:$PATH" ./.tools/nix-to-tfvars.sh;
            '';
          };
        }
      );
}
