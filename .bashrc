if [[ $- != *i* ]] ; then
	return
fi

# user created
alias sudo='sudo ' # yes you actually need this 
alias update='pacman -Syu ' 
alias install='pacman -S '
alias installa='yay -S  '
alias remove='pacman -R '
alias listall=''

alias themes-install="git init $HOME && git remote add origin https://github.com/linuxthemes/base"
alias themes-update="git pull"
alias themes-switch="git checkout "
alias themes-create="git -b checkout "
