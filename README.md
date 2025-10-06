# Themes Base
    
## Install Themes 

Install base
```sh
echo "
alias themes-install="git init $HOME; git remote add origin https://github.com/linuxthemes/base; git pull;"
alias themes-update="git pull"
alias themes-save="git update"
alias themes-switch="git checkout "
alias themes-create="git -b checkout "
alias themes-remote="git remote set-url "
" >> ./bashrc
```

```sh
themes-install
```

## Themes

Switch themes 
```sh
themes-switch tokoyonight
```

Make your own theme
```sh
themes-create thebesttheme
```

base themes list
```sh
base
basex
basek
baseg
basew
tokoyonight
```

base programs list
```sh
fzf
eza
rofi
micro
vscode
jetbrains-toolbox
firefox
ghostty
ulauncher
gnome-terminal
google-chrome
github-desktop
ksystemlog
ksystemdgenie

xfce
gnome
kde
wayland
```


![Alt](https://repobeats.axiom.co/api/embed/ff6ce752ed4e193227810cd238820d385fcda408.svg "Repobeats analytics image")



