# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 2

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"  
# export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/jpeg/lib"
export CPPFLAGS="-I/opt/homebrew/opt/jpeg/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/jpeg/lib/pkgconfig"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export PS1="%F{magenta}~ﬂ‡≈◊~%F{green}[%F{blue}%~%F{green}]%F{magenta}~%F{green}{ %F{red}# %F{cyan}%BMKB%b%F{red} # %F{green}}%F{magenta}~ "


# set my dirs
HOM_DIR="/Users/mkb"
GIT_DIR="${HOM_DIR}/github"
HIG_DIR="${GIT_DIR}/highcharts"
UTL_DIR="${GIT_DIR}/highcharts-utils"
MKB_DIR="${HOM_DIR}/myc0de"
MYP_DIR="${HOM_DIR}/pyplace"
WRK_DIR="${HOM_DIR}/working_syms"

# my path extensions
export PATH="$WRK_DIR:$PATH"

# easy traversal
alias hrep="cd $HIG_DIR"
alias urep="cd $UTL_DIR" 
alias mdir="cd $MKB_DIR"
alias pdir="cd $MYP_DIR"
alias smpl="cd $HIG_DIR/samples"
alias wsym="cd $WRK_DIR"

# initialize
alias hinit="hrep && npx gulp"
alias uinit="urep && node server"

# edit vim
alias vcfg="vim ${HOM_DIR}/.vimrc"
alias vsrc="source ${HOM_DIR}/.vimrc"

# edit zsh
alias zcfg="vim ${HOM_DIR}/.zshrc"
alias zsrc="source ${HOM_DIR}/.zshrc"

# edit wezterm
alias wcfg="vim ${HOM_DIR}/.config/wezterm/wezterm.lua"

# helpful utils
alias cz="cat ${HOM_DIR}/cheatsheet.txt | less"
alias brpg="brew update && brew upgrade"
alias mypy="/Users/mkb/pyplace/bin/python3.12"
alias mpip="/Users/mkb/pyplace/bin/pip3.12"
# -- IN PROGRESS --
# alias gulpid='lsof | grep -E "${HIG_DIR}\/ts.*" -c1 | awk "{print $1}"'
# alias nrez="rm -rf node_modules/ && npm install"
# alias hfix='hrep && nrez && kill $(gulpid) >/dev/null; npx gulp'
# --

# vim will be ran in other term, thus re-source to check that term for powerlevel10k support (happens in the very start of this file
#alias viminit ="zsrc && d`vim $@`"

# run vim in kitty terminal
# alias vim="$VIM_TERM vim"
alias wnet="watch -w -d \"lsof -i +c0 | grep -E 'ESTABLISHED|LISTENING'\""

# shorthand for sublime
alias subl="open -n -a '/Applications/Sublime Text.app'"

# run with color
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# -- temp
#alias gdem="cd /Users/mkb/github/highcharts/samples/gantt/demo/project-man2"
#alias gser="cd /Users/mkb/github/highcharts/ts/Series/Gantt"
#alias gtax="cd /Users/mkb/github/highcharts/ts/Core/Axis/TreeGrid"
#alias htick ="vim /Users/mkb/github/highcharts/ts/Core/Axis/Tick.ts"
#alias haxis ="vim /Users/mkb/github/highcharts/ts/Core/Axis/Axis.ts"
#alias hdemo ="vim /Users/mkb/github/highcharts/samples/highcharts/demo/xheatbug/demo.js"

# env vars for less and man
export LESS='-R --use-color -Dd+r$Du+b$'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

#
#source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

