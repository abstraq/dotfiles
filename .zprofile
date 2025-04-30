# Start river automatically when logging in from tty1
if [ -z "$WAYLAND_DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  exec river > "$XDG_CACHE_HOME/river.log" 2>&1
fi

