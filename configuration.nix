{ nixpkgs, config, inputs, ... }:
#let
#  inherit (inputs.nvf.lib.dag) entryAfter;
#in
{
  config.vim = {
#    luaConfigRC = entryAfter ["lspconfig"] "require('lspconfig').harper_ls.setup {}";
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
      treesitter.enable = true;
    };
    treesitter.enable = true;
    languages = {
      nix.enable = true;
      clang.enable = true;
      rust.enable = true;
    };
  };
}
