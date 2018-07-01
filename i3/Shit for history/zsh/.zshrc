setopt autocd
setopt extendedglob
setopt nobeep

# wpg termite colors
cat $HOME/.config/wpg/sequences

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

# Aliases
alias xi='sudo xbps-install -S'
alias xr='sudo xbps-remove'
alias xu='sudo xbps-install -Su'

# Plugins
source /home/defaultuser/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/defaultuser/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/defaultuser/.zplugins/zsh-completions/zsh-completions.plugin.zsh
