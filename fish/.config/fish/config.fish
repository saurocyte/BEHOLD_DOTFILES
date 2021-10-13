if status is-login
    # exec sway
	exec startx -- -keeptty
end

# Variables
set D /home/win/D
set C /home/win/C

# Exports
set -x EDITOR nvim
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH $HOME/.emacs.d/bin
set -x PATH $PATH $HOME/.yarn/bin
set -x MOZ_USE_XINPUT2 1
set -x GTK_THEME Adwaita:dark

# Aliases
alias pi 'sudo pacman -S'
alias pr 'sudo pacman -Rsn'
# alias ts 'trizen -S'
alias orgmachine emacs
# alias wifi 'sudo wifi-menu'
alias fox firefox
alias mv 'mv -i'
alias clear 'printf "\033c"'
alias ipython 'ipython --profile=main'
alias rm mv_trash
# alias ls 'ls --color=auto --group-directories-first'
alias emacs 'setsid emacs'
alias ls exa
alias _copy 'xclip -selection clipboard'
alias _paste 'xclip -o -selection clipboard'
alias shadow-cljs 'npx shadow-cljs'
alias cat bat
alias dragon dragon-drag-and-drop
