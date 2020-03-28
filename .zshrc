# Executables

PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/Applications
PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin
PATH=$PATH:/snap/bin

# ZSH
export ZSH="$HOME/.oh-my-zsh" # installation path
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(git)

# ZSH theming
SH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram swap)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# MISC 
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Aliases
alias update="yay -Syu"
alias xrandreset="xrandr -s 0"
alias hppav="xrandr --output HDMI1 --scale 1.6x1.6 --panning 2560x1440"
# alias tvision="xrandr --output DP1 --scale 1.5x1.5 --panning 2560x1440"
alias thinkvision="xrandr --output DP1 --scale 1.5x1.5"
alias fuji="xrandr --output HDMI1 --scale 1.77x1.6 --pos 0x0 --output eDP1 --below HDMI1"
alias kreset="killall plasmashell && plasmashell &"
alias journal="journalctl -b -1 | tail -50"
alias ports="ss -lntu"
alias portprocess="fuser 8080/tcp"

# https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#recommended-enable-user-namespace-cloning
alias fixpp="sudo sysctl -w kernel.unprivileged_userns_clone=1"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

