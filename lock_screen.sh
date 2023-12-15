#!/bin/bash
revert() {
  rm /tmp/*screen*.png
  xset dpms 0 0 0
}
trap revert HUP INT TERM
xset +dpms dpms 60 0 0
import -delay 1 -window root /tmp/locking_screen_orig.png
convert -gamma 0.7 /tmp/locking_screen_orig.png /tmp/locking_screen.png
convert -blur 0x8 /tmp/locking_screen.png /tmp/screen_blur.png
convert -composite /tmp/screen_blur.png /home/tob/skrypty/custom_image.png -gravity Center -geometry -20x1200 /tmp/screen.png
i3lock -n -i /tmp/screen.png
revert
