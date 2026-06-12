## Watson-dmenu

> NOTE: Code moved to https://git.firecat53.me/firecat53/watson-dmenu. Issues and
> PRs still accepted here for now. Github repo maintained as a read-only mirror.

A dmenu script to start, stop and view default report, aggregate or logs of
[Watson](https://jazzband.github.io/Watson/) time-tracked projects.

- Copy or symlink the script to your bin folder. `watson` should be in your
  $PATH
- Create a keybinding to activate the script
- Add dmenu or Rofi options as arguments to this script, e.g.:
    
    watson_dmenu -i -theme watson
 
- Supports $WATSON_DIR if defined
