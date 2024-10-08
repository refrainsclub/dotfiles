# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git node npm yarn brew fd fzf zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# aliases
alias omzr="omz reload"
alias c="clear"
alias gcw='git commit -m "wip" --no-verify'
alias code="vim"
alias ks="tmux kill-server"
alias py="python3"

function vim() {
    if [[ $# -eq 0 ]]; then
        nvim .
    else
        nvim "$@"
    fi
}

# zoxide
eval "$(zoxide init zsh)"

# starship.rs
export STARSHIP_CONFIG=~/.config/starship/config.toml
export STARSHIP_CACHE=~/.config/starship/cache
eval "$(starship init zsh)"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# golang
export PATH="$HOME/go/bin:$PATH"

# tizen
export PATH="$HOME/tizen-studio/tools/ide/bin:$PATH"
export PATH="$HOME/tizen-studio/tools:$PATH"

# fix lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
