# pyenv
if [ -d $HOME/.pyenv ]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
fi

if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

# rbenv
if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

# composer
if [ -d $HOME/.composer ]; then
  export PATH="$HOME/.composer:$PATH"
  alias composer='composer.phar'
fi

if [ -d $HOME/.composer/vendor/bin ]; then
  export PATH="$HOME/.composer/vendor/bin:$PATH"
fi

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# drush
if [ -d $HOME/.drush ]; then
  export PATH="$HOME/.drush:$PATH"
fi

# moosh
if [ -d $HOME/.moosh ]; then
  export PATH="$HOME/.moosh:$PATH"
  alias moosh='moosh.php'
fi

# linuxbrew
if [ -d $HOME/.linuxbrew ]; then
    export PATH="$HOME/.linuxbrew/bin:$PATH"
    export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
fi

# phpenv
if [ -d $HOME/.phpenv ]; then
    export PATH="$HOME/.phpenv/bin:$PATH"
    eval "$(phpenv init -)"
fi

# pear
if [ -d $HOME/pear ]; then
    export PATH="$HOME/pear/bin:$PATH"
fi
