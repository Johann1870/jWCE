# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/jditzel/.oh-my-zsh

 cd ~

 source ~/.zsh_profile

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# my default theme
# ZSH_THEME="ys"

PATH=$PATH:"/cygdrive/c/Users/jditzel/Dropbox/work/MCG/todo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=1
#export SPOTIPY_CLIENT_ID='dacba78882b44cefae65e8b295824825'
#export SPOTIPY_CLIENT_SECRET='3b1708b472734d31b27544d9bc8f5406'
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Disable hostname completion (performance issues)
zstyle ':completion:*' hosts off

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.

#zsh-syntax-highlighing must be last to work with all commands
plugins=(git z battery emoji-clock zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source /cygdrive/c/Users/jditzel/Dropbox/todo/todo_completion

# complete -F _todo t

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

# #Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#	export EDITOR="/cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe"
# else
#	export EDITOR="/cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe"
# fi


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Functions
npp()
{
	/cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe $* &
}


colour()
{
    if [ $# -eq 3 ]
      then $secondterm=$2$3
    fi
    pygmentize -g $secondterm -f terminal16m $1
}
color()
{
    if [ $# -eq 3 ]
      then $secondterm=$2$3
    fi
    pygmentize -g $secondterm -f terminal16m $1
}
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export TODOTXT_DEFAULT_ACTION=ls
alias t='/cygdrive/c/Users/jditzel/Dropbox/todo/todo.sh -d /cygdrive/c/Users/jditzel/Dropbox/todo/todo.cfg | grep --color=never @mcg'
alias td='/cygdrive/c/Users/jditzel/Dropbox/todo/todo.sh -d /cygdrive/c/Users/jditzel/Dropbox/todo/todo.cfg'
export td='/cygdrive/c/Users/jditzel/Dropbox/todo/todo.sh -d /cygdrive/c/Users/jditzel/Dropbox/todo/todo.cfg'
alias tall='/cygdrive/c/Users/jditzel/Dropbox/todo/todo.sh -d /cygdrive/c/Users/jditzel/Dropbox/todo/todo.cfg'
alias ns='/usr/local/bin/netstatType.zsh'
alias nsw='/usr/local/bin/netstatTypeWeb.zsh'
#alias npp='/cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe'
alias weather='curl en.wttr.in/seattle'
alias mailr='maillogreport.sh'

recent()
{
  ls -Art | tail -n 1
}

tgrecent()
{
  cwd=$(pwd)
  cd ~/.telegram-cli/downloads
  recent | xargs cygstart
  cd $cwd
}

#todo adds to todo.txt with @mcg tag
ta()
{
  td -t a $* '@mcg' &
}
#todo pri
tp()
{
  td p $* 'A' &
}
#todo pri
tdone()
{
  td do $* &
}
tweb()
{
  td nav $* &
}

tg()
{
  ~/tg/bin/telegram-cli.exe -N
}
