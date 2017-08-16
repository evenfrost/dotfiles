# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Setup a reference to the configuration for interactive shells:
#
export BASH_ENV=~/.bashrc
export ENV=$BASH_ENV

# If the file referred to exists then run it:
#
if [ -f $BASH_ENV ]; then . $BASH_ENV; fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use default

. ~/.yarn-completion

# LV2 plugins path for Audacity
export LV2_PATH=$HOME/.lv2:/usr/local/lib/lv2:/usr/lib/lv2
