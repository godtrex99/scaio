#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
x="ok"
while true $x != "ok"
do

echo -e "\033[0;34m╒══════════════════════════════════════════╕\033[0m"
echo -e "\E[0;41;36m                 AUTOKILL  MENU                 \E[0m"
echo -e "\033[0;34m╘══════════════════════════════════════════╛\033[0m"
echo -e "
[\033[0;32m01\033[0m] • AutoKill SSH 
[\033[0;32m02\033[0m] • AutoKill VMess

[00] • Back to Main Menu \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m"
echo ""
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo -ne "Select menu : "; read x

case "$x" in 
   1 | 01)
   clear
   autokill
   break
   ;;
   2 | 02)
   clear
   autokill-ws
   break
   ;;
   0 | 00)   
   clear
   menu
   break
   ;;
   *)
   clear
esac
done
#fim