# rbenv
if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# composer
#if [ -d $HOME/.composer ]; then
#  export PATH="$HOME/.composer:$PATH"
#  alias composer='composer.phar'
#fi

if [ -d $HOME/.composer/vendor/bin ]; then
  export PATH="$HOME/.composer/vendor/bin:$PATH"
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

# pear
if [ -d $HOME/pear ]; then
    export PATH="$HOME/pear/bin:$PATH"
fi
