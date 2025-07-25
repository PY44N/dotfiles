# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc
. "$HOME/.cargo/env"

alias ls="lsd --group-directories-first --color=always"
alias open="xdg-open"
# alias neofetch="fastfetch"

export ELECTRON_OZONE_PLATFORM_HINT=wayland

#eval "$(pyenv virtualenv-init -)"
eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/usr/etc/profile.d/conda.sh" ]; then
    . "/usr/etc/profile.d/conda.sh"
  else
    export PATH="/usr/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/home/ryan/.config/emacs/bin"

# ZLS
export PATH="$PATH:/home/ryan/programs/zls"
export PATH="$PATH:/home/ryan/programs/flutter/bin"

# Go
export PATH="$PATH:/home/ryan/programs/go/bin"
export PATH="$PATH:/home/ryan/go/bin"
export PATH="$PATH:$HOME/programs/bluetuith/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.config/emacs/bin"

export KUBECONFIG=~/.kube/config
export GOPATH=$HOME/go

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias claude="/home/ryan/.claude/local/claude"
