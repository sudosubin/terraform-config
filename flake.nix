{
  description = "sudosubin/terraform-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable-small";
  };

  outputs = { self, nixpkgs }:
    let
      inherit (nixpkgs.lib) genAttrs platforms;
      forAllSystems = f: genAttrs platforms.unix (system: f (import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      }));

    in
    {
      devShells = forAllSystems (pkgs:
        let
          envs = [
            {
              name = "TF_CLI_CONFIG_FILE";
              value = "$HOME/.config/terraform/config.sudosubin.tfrc";
            }
          ];

          tfvars-packages = pkgs.buildEnv {
            name = "tfvars-packages";
            paths = with pkgs; [ flyctl hcl2json jq yq ];
          };

        in
        {
          default = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              terraform
            ];

            shellHook = ''
              PATH="${pkgs.jq}/bin:$PATH" source ./.tools/nix-to-envs.sh '${builtins.toJSON envs}';
              PATH="${tfvars-packages}/bin:$PATH" ./.tools/nix-to-tfvars.sh;
            '';
          };
        });
    };
}
