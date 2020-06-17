# Added aliases (mjd119)
alias mstart='sudo systemctl restart mpd mpdscribble'
alias mstop='sudo systemctl stop mpd mpdscribble'
alias mstatus='sudo systemctl status mpd mpdscribble'
alias fastscroll='imwheel -b 45 --kill'
alias ls="exa --group-directories-first -gh"
alias grep='grep --color=auto'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias trim="awk '!/^ *#/ && NF'" #(https://stackoverflow.com/a/17396799)
