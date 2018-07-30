#
#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="jobyharding"
#SOLARIZED_THEME="light"
#ZSH_THEME="blinks"
#ZSH_THEME="jobyh"
#ZSH_THEME="robbyrussell"
ZSH_THEME="screencast"
#ZSH_THEME="jobyh"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn coffee git-extras last-working-dir osx pip web-search urltools)

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

#PROMPT="%n@%m %~
#%% "
#RPROMPT=""

# Customize to your needs...

# Aliases
# =======
if [[ -d /private ]]; then
    # OSX.
    alias l='ls -CF '
    alias la='ls -A'
    alias ll='ls -alF'

    # Cross OS gui vim.
    alias gvim='mvim'
else
    # Linux.
    alias l='ls -CF --color=auto'
    alias la='ls -A --color=auto'
    alias ll='ls -alF --color=auto'

    # Cross OS gui vim.
    alias mvim='gvim'

    # mimic pbcopy from OSX.
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

# todo
alias todo='todo -@ -+ -t'

# git-extras
alias gitterm='git repl'
alias giterm='git repl'

# grep
alias grep='grep --color=auto'

# source .zshrc
alias src='source ~/.zshrc'

# tree
alias t='tree -Ca -L 2 -I \.git'
alias tt='tree -Ca -L 3 -I \.git'
alias ttt='tree -Ca -L 4 -I \.git'

# twitter cli
alias tw='t'

# veewee
alias veewee='bundle exec veewee'

# open my 'standard' dumpfile.
alias mrlog='vim ~/.mrloggingtons'

# drush
alias dru='drush'

# git (my common typo)
alias it='git'

# System variables
# ================
export EDITOR=vim
export TERM=xterm-256color
export NODE_PATH="/usr/local/lib/node"
export PYTHONSTARTUP=$HOME/.pythonstartup


# System settings
# ===============
set -o vi                                                                           # Vi key bindings.


# Key bindings
# ============
bindkey "^R" history-incremental-search-backward                                    # Bind Ctrl-R to reverse-history in Vi mode.


# Functions
# =========

# Search path additions
# =====================

if [[ -d /private ]]; then

    # OSX
    # ===
    # Homebrew
    PATH=$PATH:/usr/local/Cellar/php54/5.4.6/bin                                        # Add php5.4.6 bin to path
    PATH=/usr/local/bin:$PATH                                                           # Local bin (Homebrew)

    # NPM
    PATH=$PATH:/usr/local/share/npm/bin

    # Haskell package manager.
    PATH=$PATH:$HOME/.cabal/bin                                                         # Location for cabal installed Haskell binaries.
else

    # Ubuntu
    # ======

fi

# Language-specific path additions
# ================================

# llvm
PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

if [[ -d /private ]]; then
    # OSX homebrew installed autojump.
    [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
else
    # Ubuntu apt installed autojump.
    [[ -f /usr/share/autojump/autojump.sh ]] && . /usr/share/autojump/autojump.sh
fi

PERL_MB_OPT="--install_base \"/home/jobyh/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jobyh/perl5"; export PERL_MM_OPT;

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-paraiso.dark.sh"
#BASE16_SHELL="$HOME/.config/base16-shell/base16-flat.dark.sh"
#BASE16_SHELL="$HOME/.config/base16-shell/base16-grayscale.light.sh"
#BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
#BASE16_SHELL="$HOME/.config/base16-shell/bright.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
#base16_flat

# MacVim installed via homebrew
#PATH=$PATH:/usr/local/Cellar/macvim/7.4-84/bin

# Composer
export PATH=$PATH:~/.composer/vendor/bin

# Set colourscheme
#base16_mexico-light
#base16_darktooth
#base16_flat
#base16_harmonic-dark

# Nodenv
eval "$(nodenv init -)"
