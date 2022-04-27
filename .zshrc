#Prompt
PS1="%F{green}%B%~/%b%f "

#Exports 
export PATH="$HOME/.local/bin/:$PATH"
export MICRO_TRUECOLOR=1

# Aliases
alias gp='git push'
alias ga='git add -v'
alias gc='git commit'
alias ls='ls --color=auto -t'
alias cls='clear'
alias py='python3'
alias pip='pip3'
alias ytdl='youtube-dl'
alias docker='sudo docker'
alias open='xdg-open'
alias sudo='sudo -p "$(printf "\033[1;31mPassword: \033[0;0m" )"'
alias rm='printf "\033[1;31m" && rm -rIv'
alias cp='printf "\033[1;32m" && cp -rv'
alias mv='printf "\033[1;34m" && mv -v'
alias mkdir='printf "\033[1;33m" && mkdir -v'
alias rmdir='printf "\033[1;35m" && rmdir -v'
alias updatemirrors='sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias bconfig='xed ~/.config/bspwm/bspwmrc'
alias sconfig='xed ~/.config/sxhkd/sxhkdrc'
alias tar='tar xvzf'
alias nord='python src/cli.py'

# History
HISTSIZE=500
SAVEHIST=1000
HISTFILE=.cache/zsh_history

# Tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#binds
bindkey "^[[3~" delete-char
bindkey "^A" beginning-of-line
bindkey "^Q" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

