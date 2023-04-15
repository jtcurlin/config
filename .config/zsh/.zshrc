# file:     zsh/.zshrc
# author:   jacob curlin

# note: $ZDOTDIR is set in /etc/zshenv to redirect zsh startup to .config/zsh

# [plugin] Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#           Initialization code that may require console input (password prompts, [y/n]
#           confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# aliases
source $HOME/.config/common/aliases.sh

# set path
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"


# [plugin] powerlevel10k custom prompt
source $ZDOTDIR/plugins/powerlevel10k/powerlevel10k.zsh-theme

    # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

# [plugin] zsh-autosuggestions
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# zsh-syntax-highlighting
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
