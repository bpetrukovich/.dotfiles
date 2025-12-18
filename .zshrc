# uncomment for profiling
# zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -f ~/.zshrc_secret ]; then
    source ~/.zshrc_secret
fi

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

export ZSH="$HOME/.oh-my-zsh"

export CHROME_BIN="/usr/bin/chromium-browser"

ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(
  git
  zsh-autosuggestions
  # npm
  # yarn
  z
  vi-mode
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#
export EDITOR='nvim'

# For a full list of active aliases, run `alias`.
alias zshc="nvim ~/.zshrc"
alias vi="nvim"
alias vim="nvim"
alias vim.="nvim ."
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias fd='fdfind'
alias c1="awk '{ print \$1 }'"
alias c2="awk '{ print \$2 }'"
alias c3="awk '{ print \$3 }'"
alias c4="awk '{ print \$4 }'"
alias c5="awk '{ print \$5 }'"
alias c6="awk '{ print \$6 }'"
alias c7="awk '{ print \$7 }'"
alias ls="eza"
alias obs="cd /home/bpetrukovich/obsidian-vault"
alias nuget="mono /usr/local/bin/nuget.exe"

alias extfile='jq -r ".fileContent" | base64 --decode > /mnt/c/Users/b.petrukovich/OneDrive\ -\ Itransition\ Group/PP/test$(date +%s).pptx'

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# vim mode
# bindkey -v
# PATH="$PATH":"$HOME/.local/share/bob/nvim-bin/"
PATH="$PATH":"$HOME/.local/scripts/"
PATH="$PATH":"$HOME/.zig/"
PATH="$PATH":"/usr/local/go/bin"
PATH="$PATH":"$HOME/go/bin/"
PATH="$PATH":"$HOME/.dotnet/tools"
bindkey -s ^f "multi-sessionizer\n"
bindkey -s ^e "script-selector\n"


# Load Angular CLI autocompletion.
# source <(ng completion script)

# pnpm
export PNPM_HOME="/home/bpetrukovich/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# eval "$(starship init zsh)"

# [ -f "/home/bpetrukovich/.ghcup/env" ] && . "/home/bpetrukovich/.ghcup/env" # ghcup-env

# fnm
FNM_PATH="/home/bpetrukovich/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# uncomment for profiling
# zprof
