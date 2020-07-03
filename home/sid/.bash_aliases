alias ll="ls -l"
alias pf="ps -e | grep $1"
alias cls="clear"
alias sysupdate="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y; sudo apt autoclean -y"
alias heidi="wine C:/Program\ Files/HeidiSQL/heidisql.exe&"
alias p71="sudo a2dismod php7.4 && sudo a2enmod php7.1 && sudo systemctl restart apache2"
alias p74="sudo a2dismod php7.1 && sudo a2enmod php7.4 && sudo systemctl restart apache2"
alias skey="ssh-copy-id -i ~/.ssh/id_rsa.pub $1"
addapacheconf()
{
a2ensite "$1"
systemctl restart apache2
}
