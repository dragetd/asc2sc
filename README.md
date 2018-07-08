# asc2sc
Converts an ASCII string to ScanCode (IBM-style 101-, 102-, and 104-key keyboards).

Outputs ScanCode for KeyDown and KeyUp.

Useful for pre 5.2 VirtualBox command 'controlvm' with 'keyboardputscancode'. See https://www.virtualbox.org/manual/ch08.html#vboxmanage-controlvm

**Note:** Since VirtualBox 5.2 the subcommand 'keyboardputstring' is supported and works better than this implementation!
