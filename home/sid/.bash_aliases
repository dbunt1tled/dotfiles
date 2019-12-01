alias ll="ls -l"
alias pf="ps -e | grep $1"
alias cls="clear"
alias sysupdate="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y; sudo apt autoclean -y"
alias heidi="wine C:/Program\ Files/HeidiSQL/heidisql.exe&"
alias copypwd='pwd | xclip -sel clip'
setphp71()
{
sudo a2dismod php7.3
sudo a2enmod php7.1
sudo systemctl restart apache2
}
setphp73()
{
sudo a2dismod php7.1
sudo a2enmod php7.3
sudo systemctl restart apache2
}
setsshkey()
{
ssh-copy-id -i ~/.ssh/id_rsa.pub $1
ssh-add
}
addapacheconf()
{
sudo a2ensite $1
sudo systemctl restart apache2
}



e() {
    if [ -f $1 ] ; then
	case $1 in
	    *.tar.bz2)   tar xjvf $1 ;;
	    *.tar.gz)    tar xzvf $1 ;;
	    *.tar.xz)    tar xJvf $1 ;;
	    *.bz2)       bunzip2 $1 ;;
	    *.rar)       unrar xv $1 ;;
	    *.gz)        gunzip $1 ;;
	    *.tar)       tar xvf $1 ;;
	    *.tbz2)      tar xjvf $1 ;;
	    *.tgz)       tar xzvf $1 ;;
	    *.zip)       unzip $1 ;;
	    *.7z)        7z $1 ;;
	    *.xz)        xz -vd $1 ;;
	    *)           echo "'$1' cannot be extracted via extract()" ;;
	esac
    else
	echo "'$1' is not a valid file"
    fi
}
