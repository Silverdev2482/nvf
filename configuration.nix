{ nixpkgs, config, ... }:
{
  config.vim = {
    theme.enable = true;
    options = {
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
    };
  };
}
