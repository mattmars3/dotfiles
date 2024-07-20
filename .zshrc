# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

eval "$(oh-my-posh init zsh --config ~/.config/omp/dracula.omp.json)"
# eval "$(starship init zsh)"

export PATH=$PATH:/home/matt/.cargo/bin

# Use powerline
# USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
# HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias sshserver="kitten ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no matt@10.0.0.70"
alias update="cd ~/Tech/PlaylistPioneer/update_history/ && sudo npm run dev"
alias cd="z"
alias spotifyd="spotifyd --config-path ~/.config/spotifyd/spotifyd.conf"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/matt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/matt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/matt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/matt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(zoxide init zsh)"
