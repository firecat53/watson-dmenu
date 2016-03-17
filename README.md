## Watson-dmenu

A dmenu script to start, stop and view status of
[Watson](http://tailordev.github.io/Watson/) time-tracked projects.

- Copy or symlink the script to your bin folder. `watson` should be in your
  $PATH
- Create a keybinding to activate the script
- Edit the Watson configuration file if desired to add dmenu options or use a
  dmenu replacement such as Rofi:

```ini
[dmenu]
fn = -*-terminus-medium-*-*-*-16-*-*-*-*-*-*-*
# dmenu_command = /usr/bin/dmenu
# # Note that dmenu_command can contain arguments as well like `rofi -width 30`
# # Rofi and dmenu are set to case insensitive by default `-i`
# fn = font string
# nb = normal background (name, #RGB, or #RRGGBB)
# nf = normal foreground
# sb = selected background
# sf = selected foreground
# b =  (just set to empty value and menu will appear at the bottom
# m = number of monitor to display on
# p = Custom Prompt
```
