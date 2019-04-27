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

# Prompt
autoload -Uz promptinit
promptinit
prompt walters

# Completion system
autoload -Uz compinit
compinit
zstyle :compinstall filename '/home/defaultuser/.zshrc'

# Path variables
e="/home/win/e"
c="/home/win/c"

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

# Plugins
source ~/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zplugins/zsh-completions/zsh-completions.plugin.zsh

# Functions
setKeyboardLight () {
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness" int32:$1 
}
