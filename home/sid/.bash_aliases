alias ll="ls -l"
alias pf="ps -e | grep $1"
alias cls="clear"
alias sysupdate="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y; sudo apt autoclean -y"
alias heidi="wine C:/Program\ Files/HeidiSQL/heidisql.exe&"
setphp70()
{
a2dismod php7.2
a2enmod php7.0
systemctl restart apache2
}
setphp72()
{
a2dismod php7.0
a2enmod php7.2
systemctl restart apache2
}
setsshkey()
{
ssh-copy-id -i ~/.ssh/id_rsa.pub "$1"
ssh-add
}
addapacheconf()
{
a2ensite "$1"
systemctl restart apache2
}
