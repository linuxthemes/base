# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# User Created
# xset -b
# exec zsh # add why this is here



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"



# user created

alias sudo='sudo ' # yes you actually need this 

alias listi='emerge -pqe @world'
alias listall='emerge -pqe --nodeps @selected'
alias listworld='emerge -pqe --nodeps @world'
alias listdups="equery list --duplicates '*'"
alias sync='emerge --sync'
alias syncg='emerge --sync guru'
alias install='emerge -avq'
alias remove='emerge -C'
alias update='emerge -avquD @world' 
alias update-new='emerge -avquDN @world' 
alias update-changed='emerge -avquDU @world' 
alias clean='emerge --clean --ask'
alias cleand='emerge --depclean --ask'
alias checkse='glsa-check --test all'

alias codeh='code ~/'
alias coder='code /'

alias control='systemctl'
alias controlu='systemctl --user'

alias testportal='/usr/libexec/xdg-desktop-portal -vr'
alias testportal-gtk='/usr/libexec/xdg-desktop-portal-gtk -vr'
alias testbottles='flatpak run -v com.usebottles.bottles'
alias testdesktop='flatpak run -v io.github.shiftey.Desktop'
  