# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/hlv/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(git zsh-syntax-highlighting)

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
alias g="gvim"
alias gd="gvimdiff"

#synopsys
export PATH=/eda/synopsys/installer:$PATH

#synopsys IP&VIP
export DESIGNWARE_HOME=/eda/vendor_data/synopsys

#synopsys license
export SNPSLMD_LICENSE_FILE=27000@localhost.localdomain

#scl
export PATH=/eda/synopsys/scl/2018.06/linux64/bin:$PATH
#VCS
export PATH=/eda/synopsys/vcs-mx/O-2018.09-SP2/bin:$PATH
export VCS_HOME=/eda/synopsys/vcs-mx/O-2018.09-SP2
export UVM_HOME=/eda/synopsys/vcs-mx/O-2018.09-SP2/etc/uvm-1.2
export VCS_ARCH_OVERRIDE=linux
export VCS_TARGET_ARCH=amd64
#Verdi
export PATH=/eda/synopsys/verdi/Verdi_O-2018.09-SP2/bin/:$PATH
export VERDI_HOME=/eda/synopsys/verdi/Verdi_O-2018.09-SP2
export NOVAS_HOME=/eda/synopsys/verdi/Verdi_O-2018.09-SP2
export FSDB_FUNCTIONS=1

#vivado
export XILINXD_LICENSE_FILE=/eda/Xilinx/xilinx_lic.lic

#dvt
export DVT_LICENSE_FILE=/eda/app/dvt/license.dat
#export DVT_HOME=/eda/app/dvt/dvt-18.1.50
export DVT_HOME=/eda/app/dvt/dvt-19.1.30
export DVT_LOG_LOCATION=/dev/null
#alias  dvt "bsub -Is $tool_home/bin/dvt.sh"
alias  dvt="$DVT_HOME/bin/dvt.sh"

#smartgit
export SMARTGIT_HOME=/eda/app/smartgit/19_1_4
alias  smartgit="$SMARTGIT_HOME/bin/smartgit.sh"
