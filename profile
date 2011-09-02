# environment and colors
export PS1="\[\e[36;1m\]\h \[\e[32;1m\]\W \[\e[33;1m\]$ \[\e[0m\]"
export CLICOLOR=1
export LSCOLORS=cxfxexexDxexexDxDxcxcx
export EDITOR='mate -w'
export PATH=/usr/local/mysql/bin:$PATH

# bash aliases
alias ls='~/scripts/ll.sh'
alias ll='ls'
alias d='cls && cd ~/.dotfiles && pwd && ll'
alias h='cls && cd ~ && pwd && ll'
alias s='cls && cd ~/Sites && pwd && ll'
alias init-flash='~/scripts/init-flash.sh'
alias init-git='~/scripts/init-git.sh'
alias git-all='~/scripts/git-recursive-pull.sh'
alias danro-ssh='ssh -i ~/.ssh/id_rsa danro@danro.net'
alias clear-dns='~/scripts/clear-dns-cache.sh'
alias dzip='~/scripts/dzip.sh'
alias vim='mvim'
alias getip='curl http://www.whatismyip.org && echo'
alias git-diff-vi='git diff --no-ext-diff -w "$@" | vi -R -'
alias vimrc='mvim ~/.gvimrc.local'

# clear OSX Terminal screen
function cls() {
   /usr/bin/open -a Terminal
   /usr/bin/osascript -e 'tell application "System Events" to tell process "Terminal" to keystroke "k" using command down'
   return 0
}

# minecraft server
alias mc-single='~/scripts/mc-single.sh'
alias mc-backup='dzip /Users/_minecraft ~/Dropbox/Library/Minecraft/server.zip'
alias mc-load='sudo launchctl load /Library/LaunchDaemons/net.minecraft.server.plist'
alias mc-unload='sudo launchctl unload /Library/LaunchDaemons/net.minecraft.server.plist'
alias mc-ltrain='cd ~/.mc-server && java -Xmx1G -Xms1G -jar minecraft_server.jar nogui'
alias mc-btrain='dzip ~/.mc-server ~/Dropbox/Library/Minecraft/train.zip'
alias mc-fixperms='cd ~/../_minecraft && sudo chown -R _minecraft:_minecraft *'

