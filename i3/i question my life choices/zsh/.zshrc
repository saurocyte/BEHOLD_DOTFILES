setopt autocd
setopt extendedglob
setopt nobeep

# wpg terminal colors
#cat $HOME/.config/wpg/sequences
# wal terminal colors
(cat ~/.cache/wal/sequences &)

# History
setopt nomatch incappendhistory sharehistory
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Vi mode
#bindkey -v

# Plugins
source ~/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zplugins/zsh-completions/zsh-completions.plugin.zsh
eval $(thefuck --alias fuck)

# Prompt
autoload -Uz promptinit
PROMPT='%(?.%F{magenta}.%F{red})❯ '
RPROMPT='%F{red}%~'
promptinit
#prompt pure
#prompt walters

# Completion system
autoload -Uz compinit
compinit
zstyle :compinstall filename '/home/boi/.zshrc'
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Path variables
D='/home/boi/win/D'
C='/home/boi/win/C'

# Aliases
alias xi='sudo xbps-install -S'
alias xr='sudo xbps-remove'
alias xu='sudo xbps-install -Su'

alias pi='sudo pacman -S'
alias pr='sudo pacman -R'
alias prsn='sudo pacman -Rsn'

alias ts='trizen -S'
alias tss='trizen -Ss'

alias orgmachine='emacs'

alias ls='ls --color=auto'

alias wifi='sudo wifi-menu'

#alias ls="run_ls"
#alias dir="run_dir"
#alias vdir="run_vdir"

# Functions
setKeyboardLight () {
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness" int32:$1 
}
listFonts () {
	fc-list -v | grep -e 'family: ' | cut -c 10- | nvim
}

# Dpi
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export GDK_SCALE=2
#export GDK_DPI_SCALE=2
