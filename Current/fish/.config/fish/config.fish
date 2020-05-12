if status is-login
	exec startx -- -keeptty
end

# Variables
set D '/home/win/D'
set C '/home/win/C'

# Exports
set -x EDITOR nvim
set -x PATH $PATH "/home/boi/.cargo/bin"
set -x PATH $PATH "$HOME/.emacs.d/bin"
set -x MOZ_USE_XINPUT2 1
set -x GTK_THEME Adwaita:dark

# Aliases
alias pi 'sudo pacman -S'
alias pr 'sudo pacman -Rsn'
alias ts 'trizen -S'
alias orgmachine 'emacs'
alias wifi 'sudo wifi-menu'
alias fox 'firefox'
alias code 'code'
alias mv 'mv -i'
alias clear 'printf "\033c"'
alias ipython 'ipython --profile=main'
alias rm 'mv_trash'
