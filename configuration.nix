{ nixpkgs, config, ... }:
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
    treesitter.enable = true;
    languages = {
      nix.enable = true;
      clang.enable = true;
      rust.enable = true;
    };
  };
}
