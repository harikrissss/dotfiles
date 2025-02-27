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

# Load and initialise completion system
autoload -Uz compinit
compinit

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
eval "$(starship init zsh)"

#if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#  eval "$(oh-my-posh init zsh --config $HOME/dotfiles/.config/ohmyposh/zen.toml)"
#fi

eval "$(zoxide init --cmd cd zsh)"

source /opt/ros/humble/setup.zsh

# argcomplete for ros2, colcon, docker
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"
 
source <(docker completion zsh)
