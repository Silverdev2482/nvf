{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: {
    packages."x86_64-linux" = let
        neovimConfigured = (inputs.nvf.lib.neovimConfiguration {
          inherit (nixpkgs.legacyPackages."x86_64-linux") pkgs;
#          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            ./keybinds.nix
            {
#              vim.luaConfigRC.harper = inputs.nvf.lib.nvim.dag.entryAfter [ "lspconfig" ] ''
#                require('lspconfig').harper_ls.setup {}
#              '';
            }
          ];
        });
    in {
      # Set the default package to the wrapped instance of Neovim.
      # This will allow running your Neovim configuration with
      # `nix run` and in addition, sharing your configuration with
      # other users in case your repository is public.
      default = neovimConfigured.neovim;
    };
  };
}
