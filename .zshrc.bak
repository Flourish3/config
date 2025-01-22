# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/opt/scripts:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
# Git aware promt that tracks relation to branch (ahead/behind etc.)
test -f $ZSH/plugins/gitfast/git-prompt.sh && . $ZSH/plugins/gitfast/git-prompt.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# extract function
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

find_file () {
    if [ "$#" -gt 1 ]; then
        find "$1" -type f -iname "$2"
    else
        find . -type f -iname "$1"
    fi
}

find_file_remove () {
    if [ "$#" -gt 1 ]; then
        find "$1" -type f -iname "$2" -exec rm -f {} \;
    else
        find . -type f -iname "$1" -exec rm -f {} \;
    fi
}

TRESOS_EXPORT_PATH=""
function set_tresos_path () {
    export TRESOS_EXPORT_PATH=$(PWD)
}

PROJ_MAKE_PATH=""
function set_proj_path () {
    export PROJ_MAKE_PATH=$(PWD)
}

alias set_makesupport='export PATH="makesupport:$PATH"'

function build_script () {
    MON_APP="$1"
    if [ -z "$MON_APP" ]; then MON_APP="mon" fi
    while [[ $? != 0 ]]; sleep 1 ;do echo "makesupport/make $MON_APP";makesupport/make "$MON_APP"; done
}


function build_script_fast () {
    MON_APP="$1"
    if [ -z "$MON_APP" ]; then MON_APP="mon" fi
    while [[ $? != 0 ]]; sleep 1 ;do echo "makesupport/make $MON_APP -j >/dev/null 2>&1"; makesupport/make "$MON_APP" -j >/dev/null 2>&1; done
}

function boot_build_script () {
    while [[ $? != 0 ]]; sleep 1 ;do ./m.bat; done
}

function smake ()
{
    set_makesupport
    make $1 2>&1 | grep -E --color=auto 'error*|warning*|$'
}

function cc_license()
{
    clearlicense
    echo "Remove user with: clearlicense -release <ID>, command is saved in clipboard"
    echo "Example: clearlicense -release JDelin"
    echo "clearlicense -release" | putclip
}

alias evim="code ~/.vimrc"
alias ezsh="code ~/.zshrc"
alias etmux="code ~/.tmux.conf"
alias ebash="code ~/.bashrc"
alias ls="ls -a --color=auto"
alias gitm="git ls-files -m"
alias gs="git status"
alias write_permission_to="chmod -R u=rwx"
alias xclip="putclip"
alias mm_copy_output="mm 2>&1 | putclip"
alias ff="find_file"
alias ffr="find_file_remove"
alias gitk_command_line="git log --graph --abbrev-commit --pretty=oneline --decorate"
alias gitk='export DISPLAY=:0.0 && xinit & gitk --all &'
alias mm="makesupport/make mon"
alias fm="fast_make"
# Instant shortcuts
alias CC="cd /cygdrive/c/CC/ && ls"
alias C="cd /cygdrive/c && ls"
alias BABUN_HOME="cd /c/Users/HFritzon/.babun/cygwin/home/HFritzon/ && ls"
alias OPT="cd /c/Users/HFritzon/opt/ && ls"
alias DESKTOP="cd /c/Users/HFritzon/Desktop/ && ls"
alias MYSCRIPTS="cd /c/Users/HFritzon/opt/myScipts/ && ls"
alias VECTOR="cd /c/vector/ && ls"
alias PRODUCTS="cd CC_ECC/target/products/*/"
alias DELETE_JIRA_COCKIE="rm -r /cygdrive/c/Users/HFritzon/AppData/Local/Temp/HFritzon.jiraconnect"
alias MYDOCS="cd /cygdrive/c/Users/HFritzon/Desktop/BW-GenVI-docs && ls"
alias fe="open_file_explorer"
alias SW_REQ="cd /cygdrive/p/HFR000_Dyn/CC_DOC/software"
alias ..="cd ../"
alias clear="clear && printf '\e[3J'"
alias kill_compiler="taskkill /f /im cctc.exe; taskkill /f /im ctc.exe"
# BW aliases
export CC_PATH="/c/CC"

#alias bc="/cygdrive/c/Program\ Files\ \(x86\)/Beyond\ Compare\ 4\\/BCompare.exe"
#alias cc="/cygdrive/c/Program\ Files\ \(x86\)/IBM/RationalSDLC/clearcase/bin/clearexplorer.exe"
#alias cct="/cygdrive/c/Program\ Files\ \(x86\)/IBM/RationalSDLC/clearcase/bin/clearvtree.exe"
#alias cctool="/cygdrive/c/Program\ Files\ \(x86\)/IBM/RationalSDLC/clearcase/bin/cleartool.exe"
alias hexview="/cygdrive/c/Users/HFritzon/Desktop/Hexview/hexview.exe"

#alias fast_make='makesupport/make mon -j > /dev/null 2>&1 ; if [ $? = 0 ]; then echo "Successful build"; else makesupport/make mon; fi'

function open_file_explorer () {
    local mypath="$1"
    if [ -z "$mypath" ]; then
        explorer .
    else
        explorer "$(cygpath -w "$(pwd)/$mypath")"
    fi
}

function fast_make () {
    MON_APP="$1"
    THREADS="$2"
    if [ -z "$MON_APP" ]; then
        MON_APP="mon"
    fi

    echo "makesupport/make $MON_APP -j$THREADS >/dev/null 2>&1"
    START=$(date +%s)

    makesupport/make "$MON_APP" -j"$THREADS" >/dev/null 2>&1
    if [ $? = 0 ]; then
	    echo "Successful build";
    else
	    makesupport/make "$MON_APP";
        return 1
    fi

    END=$(date +%s)
    DIFF=$(echo "$END - $START" | bc)
    echo "Execution time: $DIFF seconds"
    return 0
}

#function reg_make () {
#   set_makesupport
#   START=$(date +%s); make mon -j; END=$(date +%s);DIFF=$(echo "$END - $START" | bc);echo "Buildtime: $DIFF seconds"
#}

# - cscope -
FILETYPES="\
        -type f -iname "*.s" -o \
        -type f -iname "*.c" -o \
        -type f -iname "*.cpp" -o \
        -type f -iname "*.h" -o \
        -type f -iname "*.hpp" -o \
        -type f -iname "*.cfg" -o \
        -type f -iname "*.am" -o \
        -type f -iname "*.mk" -o \
        -type f -iname "*.dt*" -o \
        -type f -iname "*.txt""
alias indexing_all='find ${FILETYPES} \
	> cscope.files && cscope -q -C -p 3 -b -i cscope.files'

function cd_up() {
  case $1 in
    *[!0-9]*)                                       # if no a number
      cd $( pwd | sed -r "s|(.*/$1[^/]*/).*|\1|" )  # search dir_name in curren$
      ;;                                            # if not found - not cd
    *)
      cd $(printf "%0.0s../" $(seq 1 $1));          # cd ../../../../  (N dirs)
    ;;
  esac
}
alias 'up'='cd_up'                                	# can not name function 'cd$

# Fancy prompt stuff
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

########################################################################################################################
# Export the following paths
export PATH=$PATH:/c/Python27

########################################################################################################################
# Functions
fproc() {
    # Find pid of running program, Ex: pgrep make -> output=14668
    pgrep $1
}

fpids() {
    if [ -z "$1" ]
    then
        ps -W
        echo -n "\nRecommended usage:\n\t $0 <Application_Name>\n"
    else
        ps -W | grep -i "$1"
        echo -n "\nKill PID in windows with:\n\t taskkill /PID <PID_NBR>"
        echo -n "\nKill PID in Linux with:\n\t kill -9 <PID_NBR>"
    fi
}

find_files_bigger_than () # input examples 96k, 1M, 1G
{
    local SIZE="$1"
    local THE_PATH="$2"
    if [ -z "$SIZE" ]; then
		echo "usage: find_files_bigger_then <x>G or <x>M or <x>k"
		return 0
	fi
    if [ -z "$THE_PATH" ]; then THE_PATH="/" fi
    find "$THE_PATH" -xdev -type f -size +"$SIZE" -print0 | xargs -0 ls -sdh
}

PS1='%{$reset_color%}${return_code} '


# Git aware prompt
export GIT_PS1_SHOWUPSTREAM="verbose"

NEWLINE=$'\n'
PROMPT='%{$fg[blue]%}{ %// }%{$fg[green]%}$(__git_ps1)%{$reset_color%}${NEWLINE}%{$fg[red]%}%(!.#.»)%{$reset_color%} '

# Start tmux instantly if it is installed
command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ] && export TERM=xterm-256color && exec tmux -2

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
