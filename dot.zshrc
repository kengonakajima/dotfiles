# PROMPT

PS1="[@${HOST%%.*} %1~]%(!.#.$) " 

RPROMPT="%T"                      # time at right
setopt transient_rprompt        

setopt prompt_subst               

bindkey -e                        # emacs like


export NODE_PATH=/usr/local/lib/node
export NACL_SDK_ROOT=/Users/ringo/nacl_sdk
export LANG=ja_JP.UTF-8           
export EDITOR=emacs
export SVN_EDITOR=emacs
export PATH=/usr/local/bin:$PATH:/bin:/usr/bin:/Users/ringo/bin
export LUA_PATH="/usr/local/share/lua/5.1//?.lua;/usr/local/lib/luarocks/?.lua;;"



. ~/bin/z.sh
function precmd () {
  _z --add "$(pwd -P)"
}

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
alias flp='open -a /Applications/Adobe\ Flex\ Builder\ 3/Player/mac/Flash\ Player.app'
alias tailfl='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
alias tailflp='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/policyfiles.txt'

alias svnstat='svn stat |grep -v \?'

alias mkd='make clean;make depend'
alias mkcmk='make clean;make'
alias mksq='make clean;make source; make depend;make -j 4'

alias m3='moai3d'
alias mm='moai main.lua &'
alias m='moai main.lua &'


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



alias zsrc='source ~/.zshrc'

alias rc='redis-cli'

alias my='mysql'

alias nave='~/.nave/nave.sh'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# local hidden settings
. ~/.zshrc_local


