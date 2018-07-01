setopt autocd extendedglob

# wpg termite colors
(cat $HOME/.wallpapers/sequences &) 2> /dev/null

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch inc_append_history share_history

# Vi mode
bindkey -v

# Prompt
autoload -Uz promptinit
promptinit
prompt walters

# Completion system
autoload -Uz compinit
compinit
zstyle :compinstall filename '/home/defaultuser/.zshrc'

# Global variables

# Plugins
source /home/defaultuser/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/defaultuser/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/defaultuser/.zplugins/zsh-completions/zsh-completions.plugin.zsh
