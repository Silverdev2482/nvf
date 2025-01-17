{ nixpkgs, ... }:
{
  vim.keymaps = [

    # Info on keybinding

    # (c     )  Command-line mode
    # ( i    )  Insert mode
    # (  n   )  Normal mode
    # (   o  )  Operator pending
    # (    v )  Visual+Select mode
    # (     x)  Visual mode

    # vim.keymap.set({'mode', 'mode'}, 'key', 'action')
    # { key = "key"; mode = [ "mode" "mode" ]; action = "action";   desc = "description"; }
    # Binding to <Nop> disables a key



    # Unbind Arrows and unused keys

    { key = "w"; mode = [ "n" "o" "v" "x" ]; action = "<Nop>"; }

    { key = "<Up>"; mode = [ "n" "o" "v" "x" ]; action = "<Nop>"; }
    { key = "<Down>"; mode = [ "n" "o" "v" "x" ]; action = "<Nop>"; }
    { key = "<Left>"; mode = [ "n" "o" "v" "x" ]; action = "<Nop>"; }
    { key = "<Right>"; mode = [ "n" "o" "v" "x" ]; action = "<Nop>"; }



    # Motions

    { key = "n"; mode = [ "n" "o" "v" "x" ]; action = "h";   desc = "Left"; }
    { key = "e"; mode = [ "n" "o" "v" "x" ]; action = "j";   desc = "Down"; }
    { key = "i"; mode = [ "n" "o" "v" "x" ]; action = "k";   desc = "Up"; }
    { key = "o"; mode = [ "n" "o" "v" "x" ]; action = "l";   desc = "Right"; }

    { key = "l"; mode = [ "n" "o" "v" "x" ]; action = "b";   desc = "Previous Word"; }
    { key = "u"; mode = [ "n" "o" "v" "x" ]; action = "w";   desc = "Next First Letter"; }
    { key = "y"; mode = [ "n" "o" "v" "x" ]; action = "e";   desc = "Next Last Letter"; }

    { key = "h"; mode = [ "n" "o" "v" "x" ]; action = "0";   desc = "Start of Line"; }
    { key = ","; mode = [ "n" "o" "v" "x" ]; action = "$";   desc = "End of Line"; }

    { key = "."; mode = [ "n" "o" "v" "x" ]; action = "%";   desc = "Matching Brackets"; }



    # Insert Modes

    { key = "a"; mode = [ "n" "o" "v" "x" ]; action = "o";   desc = "Newline Below then Insert"; }
    { key = "r"; mode = [ "n" "o" "v" "x" ]; action = "r";   desc = "Replace One Character"; }
    { key = "s"; mode = [ "n" "o" "v" "x" ]; action = "i";   desc = "Insert Before Cursor"; }
    { key = "t"; mode = [ "n" "o" "v" "x" ]; action = "a";   desc = "Insert After Cursor"; }

    { key = "A"; mode = [ "n" "o" "v" "x" ]; action = "O";   desc = "Newline Below then Insert"; }
    { key = "R"; mode = [ "n" "o" "v" "x" ]; action = "R";   desc = "Replace Mode/Multiple"; }
    { key = "S"; mode = [ "n" "o" "v" "x" ]; action = "I";   desc = "Insert At Start of Line"; }
    { key = "T"; mode = [ "n" "o" "v" "x" ]; action = "A";   desc = "Insert At End of Line"; }



    # Copy, Paste

    { key = "f"; mode = [ "n" "o" "v" "x" ]; action = "y";   desc = "Copy/Yank"; }
    { key = "p"; mode = [ "n" "o" "v" "x" ]; action = "p";   desc = "Paste"; }



    # Undo/Redo

    { key = "w"; mode = [ "n" "o" "v" "x" ]; action = "u";   desc = "Undo"; }
    { key = "W"; mode = [ "n" "o" "v" "x" ]; action = "<C-U>";   desc = "Redo"; }



    # Search

    { key = "<C-e>"; mode = [ "n" "o" "v" "x" ]; action = "n";   desc = "Seach Next"; }
    { key = "<C-i>"; mode = [ "n" "o" "v" "x" ]; action = "N";   desc = "Seach Previous"; }
  ];
}
