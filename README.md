## Watson-dmenu

A dmenu script to start, stop and view default report, aggregate or logs of
[Watson](http://tailordev.github.io/Watson/) time-tracked projects.

- Copy or symlink the script to your bin folder. `watson` should be in your
  $PATH
- Create a keybinding to activate the script
- Edit the Watson configuration file if desired to add dmenu options or use a
  dmenu replacement such as Rofi:

```ini
[dmenu]
# dmenu_command = /usr/bin/dmenu
# dmenu_command = /usr/bin/rofi -width 30 -theme watson
# Rofi and dmenu are set to case insensitive by default `-i`
# fn = -*-terminus-medium-*-*-*-16-*-*-*-*-*-*-*
# fn = font string
# nb = normal background (name, #RGB, or #RRGGBB)
# nf = normal foreground
# sb = selected background
# sf = selected foreground
# b =  (just set to empty value and menu will appear at the bottom
# m = number of monitor to display on
```
