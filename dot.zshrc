# PROMPT

PS1="[@${HOST%%.*} %1~]%(!.#.$) " 

RPROMPT="%T"                      # time at right
setopt transient_rprompt        

setopt prompt_subst               

bindkey -e                        # emacs like


export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
export NACL_SDK_ROOT=/Users/ringo/nacl_sdk
export LANG=ja_JP.UTF-8           
export EDITOR=emacs
export SVN_EDITOR=emacs
export PATH=/usr/local/opt/openssl/bin:/usr/local/bin:$PATH:/bin:/usr/bin:/Users/ringo/bin
export LUA_PATH="/usr/local/share/lua/5.1//?.lua;/usr/local/lib/luarocks/?.lua;;"





PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


#
# 
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"



autoload -U compinit              
compinit -u          

setopt autopushd

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# history

HISTSIZE=10000                 
SAVEHIST=10000                    

setopt hist_ignore_dups           
setopt hist_reduce_blanks      
setopt share_history             
setopt EXTENDED_HISTORY          

autoload history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end



# command aliases

alias ls="ls -G"
alias ll='ls -l -G'
alias l='ls -l -G'
alias ls='ls -G'
alias e='emacs -nw'

if [ `uname` = "Darwin" ]
then
#    alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
#    alias e='/Applications/Emacs.app/Contents/MacOS/Emacs'
fi

if [ `uname` = "Linux" ]
then
alias l='ls -l --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'	
fi




alias mk='make'



alias mkd='make clean;make depend'
alias mkcmk='make clean;make'
alias mksq='make clean;make source; make depend;make -j 4'


alias gcmt='git commit -m'
alias gcm='git commit -m'
alias gst='git status'
alias gs='git status'
alias gpu='git push'
alias gpl='git pull'
alias gp='git pull'
alias gd='git diff'
alias gmv='git mv'
alias gadd='git add'
alias gad='git add'
alias gsur='git submodule update --init --recursive; git submodule foreach --recursive "git checkout master" '
alias gsubmaster='git submodule foreach --recursive "git checkout master" '
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gours='git checkout --ours'
alias mylocal='mysql -u root -h 127.0.0.1 test'
alias ipi='curl "https://api.ipify.org?format=json"'

alias zsrc='source ~/.zshrc'

alias rc='redis-cli'

alias my='mysql'

alias nave='~/.nave/nave.sh'

alias ehttp='ruby -run -ehttpd . -p8000'


alias phps8888='php -S 0.0.0.0:8888'

alias pyhttp='python -m SimpleHTTPServer'
alias pyjson='python -m json.tool'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# local hidden settings
. ~/.zshrc_local



# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/ringo/Documents/cocos2d-x-3.13/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/ringo/Documents
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/ringo/Documents/cocos2d-x-3.13/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

TMOUT=999999

alias myip="dig o-o.myaddr.l.google.com txt @ns1.google.com +short"

