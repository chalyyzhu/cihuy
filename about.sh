#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/chalyyzhu/madang/main/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";
    echo -e "\e[31mRenew IP dulu okay?hehehehe #\e[0m"
    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/chalyyzhu/madang/main/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";
echo -e "\e[31mDaftar IP dulu sayang okay?#\e[0m"
exit 0
fi
clear
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  | lolcat
echo -e " \e[0;100;33m        • AutoScript by ZHOEvpn •            \e[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "\e[33m            ╭━━━━┳╮╱╭┳━━━┳━━━╮"
echo -e "\e[92              ╰━━╮━┃┃╱┃┃╭━╮┃╭━━╯"
echo -e "\e[92              ╱╱╭╯╭┫╰━╯┃┃╱┃┃╰━━╮╭╮╭┳━━┳━╮"
echo -e "\e[92              ╱╭╯╭╯┃╭━╮┃┃╱┃┃╭━━╯┃╰╯┃╭╮┃╭╮╮"
echo -e "\e[92              ╭╯━╰━┫┃╱┃┃╰━╯┃╰━━╮╰╮╭┫╰╯┃┃┃┃"
echo -e "\e[92              ╰━━━━┻╯╱╰┻━━━┻━━━╯╱╰╯┃╭━┻╯╰╯"
echo -e "\e[92              ╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃"
echo -e "\e[92              ╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╰╯"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"  |lolcat
echo ""
