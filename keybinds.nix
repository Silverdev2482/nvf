{ nixpkgs }:
{
  vim.keymaps = [
    { key = "n"; mode = [ "n", "o", "v", x" ]; action = "h";   desc = "Save file and quit"
    { key = "e"; mode = [ "n", "o", "v", x" ]; action = "j";   desc = "Save file and quit"
    { key = "i"; mode = [ "n", "o", "v", x" ]; action = "k";   desc = "Save file and quit"
    { key = "o"; mode = [ "n", "o", "v", x" ]; action = "l";   desc = "Save file and quit"
    }
  ];
}
