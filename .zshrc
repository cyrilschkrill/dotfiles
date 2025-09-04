# schkrill's .zshrc

PS1="%n@%{$(tput setaf 33)%}%1d%{$(tput sgr0)%}$ "

export BROWSER="qutebrowser"
unset XDG_CURRENT_DESKTOP

alias wifi='sudo ip link set wlan0 up && sudo systemctl start iwd && iwctl && sudo systemctl start dhcpcd@wlan0 && echo "Wifi: [OK]"'
alias ACAB='iwctl station wlan0 scan && echo "Scanning..." && sleep 5 && echo "Try to connect to ACAB..." && iwctl station wlan0 connect ACAB && sleep 2 && iwctl station wlan0 show' 
alias vimrc='vi ~/.vimrc'
alias vi="vim"
alias clock='peaclock'
alias ls="ls --color=tty"
alias ll="ls -1lG"
alias clr="clear"
alias !="exit"
alias :q='exit'
alias lx="ls -ld .?* "
alias R="R --quiet"
alias ddgr='ddgr -x -n 7'
alias cp='rsync -r --progress'
alias resource="source ~/.zshrc"
alias shutdown='sudo shutdown -h now'
alias lrs='systemctl --type=service --state=running' 
alias metronome='python ~/metronome-cli/metronome.py'
alias ish='idevicepair pair && idevicepair validate && ifuse --documents "app.ish.iSH" /home/schkrill/iSH'
alias iddgr='idevicepair pair && idevicepair validate && ifuse --documents "com.duckduckgo.mobile.ios" /home/schkrill/DuckDuckGo'
alias zshrc='vi /home/schkrill/.zshrc'
alias gdm='sudo systemctl start gdm'
alias pcp='rsync -r --progress'
alias sysctl='sudo systemctl'

alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias print-landscape='lp -o landscape -o fit-to-page -o media=A4 '

alias open='zathura'
alias iface='sudo ip link set enp0s29f7u1c4i2 name eth1 && sudo ip link set eth1 up && sudo systemctl start dhcpcd@eth1'

source ~/functions.sh

source ~/.config/zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

source ~/.profile
