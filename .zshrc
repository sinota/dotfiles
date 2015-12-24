# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch notify
unsetopt autocd beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/d/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# shinsuke
PROMPT='%F{green}%T%f$ '
RPROMPT='%F{yellow}%3d%f'

export HOME_ZSHRC_LOADED=1
export LANG=ja_JP.UTF-8


#  command tool
export PATH="/mingw64/bin:$PATH:/d/Program Files/Rust/bin:/d/Program Files/MongoDB/bin:/d/Program Files/VirtualBox:/d/Program Files/cmder_1_1_4_1/vendor/msysgit/bin"


# virtualbox command tool
export PATH="$PATH:/d/Program Files/VirtualBox"

alias cent6_start="VBoxManage.exe startvm \"CentOS-6.4-i386-Gnome\""
alias cent6_suspend="VBoxManage.exe controlvm \"CentOS-6.4-i386-Gnome\" savestate"
alias cent6_login="ssh shinsuke@192.168.56.12"

alias cent5_start="VBoxManage.exe startvm \"CentOS-5.7\""
alias cent5_suspend="VBoxManage.exe controlvm \"CentOS-5.7\" savestate"
alias cent5_login="ssh shinsuke@192.168.56.13"


# movie command
convert_to_mp4 () {
	ffmpeg -i "$1" -vcodec copy -acodec copy "${1%.*}.mp4"
}

