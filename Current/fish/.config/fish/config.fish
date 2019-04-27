# At login:
#if status is-login
#	exec startx -- -keeptty
#end

# Variables
set D '/home/win/D'
set C '/home/win/C'

# Exports
set -x EDITOR kak

# Aliases
alias pi 'sudo pacman -S'
alias pr 'sudo pacman -Rsn'
alias ts 'trizen -S'
alias orgmachine 'emacs'
alias ls 'ls --color=auto'
alias wifi 'sudo wifi-menu'
alias fox 'firefox-nightly'
alias code 'code-insiders'
alias mv 'mv -i'
