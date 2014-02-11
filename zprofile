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

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# Drush.
if [ -d $HOME/.drush ]; then
  export PATH="$HOME/.drush:$PATH"
fi
