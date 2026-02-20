# Path to your Oh My Zsh installation.

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

export PATH=${HOME}/bin:${PATH}

# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

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
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# Add hostname to prompt
PROMPT='%F{cyan}%m%f '$PROMPT
source $HOME/.venv/bin/activate

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias fd='fd --no-ignore'

# Antigravity app launcher
antigravity() {
  if [ -n "$1" ]; then
    open -a "Antigravity" "$1"
  else
    open -a "Antigravity"
  fi
}

instances() {
    AWS_PAGER="" aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,PrivateIpAddress,Tags[?Key==\`Name\`].Value|[0]]" --output text --no-paginate
}


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/jsheedy/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

export PAGER="less -X"
export DEVBOX_ID="i-091c25069f1229b1c"

if [ -f $HOME/.aliases ]; then
	source $HOME/.aliases
fi
alias dev="ssh -t joseph@devbox-joseph 'tmux attach || tmux new-session'"
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
export PATH=$HOME/.opencode/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
source $HOME/.env
