if [[ $- != *i* ]] ; then
	return
fi

# CentOS or Fedora Prompt
# [ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "


# Debian Prompt
# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '


# Gentoo Prompt
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

# package managers
alias sudo='sudo ' # yes you actually need this 

# emerge
# alias update='emerge -avqDN @world' 
# alias install='emerge -avq '
# alias remove='emerge --help '
# alias clean='emerge --help '
# alias listall='qlist -I '

# apt
# alias update='apt update && apt upgrade -y ' 
# alias install='apt install '
# alias installa='apt intsall --experiemental --help  '
# alias remove='apt remove '
# alias clean='apt clean --help '
# alias listall='apt list manaual --help'

# nala
# alias update='nala update && nala upgrade -y ' 
# alias install='nala install '
# alias installa='nala intsall --experiemental --help  '
# alias remove='nala remove '
# alias clean='nala clean --help '
# alias listall='nala list manaual --help'

# dnf

# yum

# arch 
alias update='pacman -Syu ' 
alias install='pacman -S '
alias installa='yay -S  '
alias remove='pacman -R '
alias listall=''

# themes
alias themes-install="git init $HOME && git remote add origin https://github.com/linuxthemes/base"
alias themes-update="git pull"
alias themes-switch="git checkout "
alias themes-create="git -b checkout "
alias themes-push="git push "

alias lsa="eza -la"
alias fzfa='fzf --style full \
    --border --padding 1,2 \
    --border-label " Demo " --input-label " Input " --header-label " File Type " \
    --preview "fzf-preview.sh {}" \
    --bind "result:transform-list-label: if [[ -z \$FZF_QUERY ]]; then echo \" \$FZF_MATCH_COUNT items \"; else echo \" \$FZF_MATCH_COUNT matches for [\$FZF_QUERY] \"; fi" \
    --bind "focus:transform-preview-label:[[ -n {} ]] && printf \" Previewing [%s] \" {}" \
    --bind "focus:+transform-header:file --brief {} || echo \"No file selected\"" \
    --bind "ctrl-r:change-list-label( Reloading the list )+reload(sleep 2; git ls-files)" \
    --color "border:#aaaaaa,label:#cccccc" \
    --color "preview-border:#9999cc,preview-label:#ccccff" \
    --color "list-border:#669966,list-label:#99cc99" \
    --color "input-border:#996666,input-label:#ffcccc" \
    --color "header-border:#6699cc,header-label:#99ccff"'
