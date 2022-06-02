  1 #!/bin/sh
  2
  3 i3-msg "exec alacritty -e fish -c 'sleep 1 && cmatrix -s -u10'"
  4 sleep 1
  5 i3-msg "fullscreen enable"
