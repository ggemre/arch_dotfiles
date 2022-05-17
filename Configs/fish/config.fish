if status is-interactive
  # Commands to run in interactive sessions can go here
	alias fixnet='sudo dhclient enp1s0 -v'
	alias ls='ls --color=auto'
	alias clock='tty-clock -ct -f "%a, %b %d"'
	set -U fish_greeting ""
end
