# At login:
if status is-login
    if test -z '$DISPLAY' -a $XDG_VTNR = 1
		# Cowsay
		exec cowsay (fortune)
		# Startx
        exec startx -- -keeptty
    end
end

# wal
cat ~/.cache/wal/sequences

# Variables
set D '/home/boi/win/D'
set C '/home/boi/win/C'

# Exports
set -x EDITOR nvim

# Aliases
alias xi 'sudo xbps-install -S'
alias xr 'sudo xbps-remove'
alias xu 'sudo xbps-install -Su'
alias pi 'sudo pacman -S'
alias pr 'sudo pacman -R'
alias prsn 'sudo pacman -Rsn'
alias ts 'trizen -S'
alias tss 'trizen -Ss'
alias orgmachine 'emacs'
alias ls 'ls --color=auto'
alias wifi 'sudo wifi-menu'
alias fox 'firefox-nightly'

