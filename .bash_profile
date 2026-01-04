# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
# . "$HOME/.cargo/env"

export PATH="$HOME/programs/flutter/bin:$PATH"

if [ -e /home/ryan/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ryan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
