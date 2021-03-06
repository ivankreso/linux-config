# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="gnzh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras git-flow archlinux common-aliases)


# User configuration

#export PATH="/opt/intel/composerxe/bin/intel64:/opt/intel/composerxe/mpirt/bin/intel64:/opt/intel/composerxe/bin/intel64:/opt/intel/composerxe/bin/intel64_mic:/opt/intel/composerxe/debugger/gui/intel64:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/cuda/bin:/opt/intel/bin:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='gvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# My config
# ---------
# dont share history across all terminals
unsetopt share_history


## systemctl --user enable ssh-agent.service
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export PATH=$PATH:/home/kivan/.gem/ruby/2.1.0/bin/
export LD_LIBRARY_PATH=/usr/local/atlas/lib/:/home/kivan/Projects/caffe/build/lib/:LD_LIBRARY_PATH
export EDITOR="gvim"
export QT_STYLE_OVERRIDE=gtk

# dont - this messes with the g++ default paths
#source /opt/intel/composerxe/bin/compilervars.sh intel64

#eval $(ssh-agent -s) > /dev/null

# clang is still unstable
#export CC=/usr/bin/clang
#export CXX=/usr/bin/clang++

#export PYTHONPATH="/usr/lib/python2.7/site-packages"
#source /opt/ros/indigo/setup.zsh
alias catkin_make='catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so'
alias catkin_make_isolated='catkin_make_isolated -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so'

#alias ssh="ssh -Y -C"
alias ssh="ssh -Y"
alias yaourt_update="yaourt --noconfirm -Syua"



export PATH=/home/kivan/libraries/install/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/kivan/libraries/install/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/home/kivan/libraries/install/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist

