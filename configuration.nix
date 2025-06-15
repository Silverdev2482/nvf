{ nixpkgs, config, inputs, pkgs, ... }:
#let
#  inherit (inputs.nvf.lib.dag) entryAfter;
#in
{
  config.vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };
    options = {
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
    };
    autocomplete.nvim-cmp = {
      enable = true;
    };
    notes.neorg = {
      enable = true;
#      treesitter.enable = true;
    };
    treesitter.enable = true;
    languages = {
      nix.enable = true;
      clang.enable = true;
      rust.enable = true;
    };
    lsp = {
      lspconfig.enable = true;
      lspkind.enable = true;
    };
    extraPlugins = with pkgs; {
      harper = {
        package = harper;
        setup = ''
          require('lspconfig').harper_ls.setup {}
        '';
        after = [ "lspconfig" ];
      };
    };
  };
}
