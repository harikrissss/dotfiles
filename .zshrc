# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "MichaelAquilina/zsh-you-should-use"
plug "chivalryq/git-alias"
plug "kutsan/zsh-system-clipboard"
plug "zap-zsh/sudo"
plug "zsh-users/zsh-history-substring-search"

bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

# Load and initialise completion system
autoload -Uz compinit
compinit

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
eval "$(starship init zsh)"

# precmd_functions=(zvm_init "${(@)precmd_functions:#zvm_init}")
# precmd_functions+=(set-long-prompt)
# zvm_after_init_commands+=("zle -N zle-line-finish; zle-line-finish() { set-short-prompt }")
#
# set-long-prompt() {
#     PROMPT=$(starship prompt)
#     RPROMPT=""
# }
#
# export COLUMNS=$(($COLUMNS + ($COLUMNS*0.1)))
# set-short-prompt() {
#     # setting this doesn't seem to actually work
#     PROMPT="$(STARSHIP_KEYMAP=${KEYMAP:-viins} starship module character)"
#     RPROMPT=$'%{\e[999C%}\e[8D%F{8}%*%f ' # remove if you don't want right prompt
#     zle .reset-prompt 2>/dev/null # hide the errors on ctrl+c
# }
#
# zle-keymap-select() {
#     set-short-prompt
# }
# zle -N zle-keymap-select
#
# zle-line-finish() { set-short-prompt }
# zle -N zle-line-finish
#
# trap 'set-short-prompt; return 130' INT
#
# # try to fix vi mode indication (not working 100%)
# zvm_after_init_commands+=('
#   function zle-keymap-select() {
#     if [[ ${KEYMAP} == vicmd ]] ||
#        [[ $1 = "block" ]]; then
#       echo -ne "\e[1 q"
#       STARSHIP_KEYMAP=vicmd
#     elif [[ ${KEYMAP} == main ]] ||
#          [[ ${KEYMAP} == viins ]] ||
#          [[ ${KEYMAP} = "" ]] ||
#          [[ $1 = "beam" ]]; then
#       echo -ne "\e[5 q"
#       STARSHIP_KEYMAP=viins
#     fi
#     zle reset-prompt
#   }
#   zle -N zle-keymap-select
#
#   # Ensure vi mode is set
#   zle-line-init() {
#     zle -K viins
#     echo -ne "\e[5 q"
#   }
#   zle -N zle-line-init
# ')

# if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#   eval "$(oh-my-posh init zsh --config $HOME/dotfiles/.config/ohmyposh/config.toml)"
# fi

eval "$(zoxide init --cmd cd zsh)"

# [ -s ~/.luaver/luaver ] && . ~/.luaver/luaver

source /opt/ros/humble/setup.zsh

# argcomplete for ros2, colcon, docker
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"
 
source <(docker completion zsh)

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/hari-ts436/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/hari-ts436/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

alias mamba="micromamba"
