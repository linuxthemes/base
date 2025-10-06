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
