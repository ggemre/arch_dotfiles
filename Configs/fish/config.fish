#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
#

if status is-interactive
  # Commands to run in interactive sessions can go here
	alias fixnet='sudo dhclient wlan0 -v'
	alias ls='ls --color=auto'
	alias clock='tty-clock -ct -f "%a, %b %d"'
    alias vim='nvim'
    set -U fish_greeting 
    bind -k nul undo
    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    export PATH="$PATH:$GEM_HOME/bin"
    export PATH="$PATH:/home/gge/scripts"
end
