#!/bin/bash
# pewarna hidup
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
NC='\e[0m'
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m            DEXTER  BANDWITH MONITOR               \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "" 
echo -e "\e[1;35m 1 \e[0m Lihat Total Bandwith Tersisa"
echo -e "\e[1;35m 2 \e[0m Tabel Penggunaan Setiap 5 Menit"
echo -e "\e[1;35m 3 \e[0m Tabel Penggunaan Setiap Jam"
echo -e "\e[1;35m 4 \e[0m Tabel Penggunaan Setiap Hari"
echo -e "\e[1;35m 5 \e[0m Tabel Penggunaan Setiap Bulan"
echo -e "\e[1;35m 6 \e[0m Tabel Penggunaan Setiap Tahun"
echo -e "\e[1;35m 7 \e[0m Tabel Penggunaan Tertinggi"
echo -e "\e[1;35m 8 \e[0m Statistik Penggunaan Setiap Jam"
echo -e "\e[1;35m 9 \e[0m Lihat Penggunaan Aktif Saat Ini"
echo -e "\e[1;35m 10 \e[0m Lihat Trafik Penggunaan Aktif Saat Ini [5s]"
echo -e "" 
echo -e "\e[1;34m 0 BACK TO MENU \e[0m"
echo -e "\e[1;34m EXIT \e[0m"
echo -e "" 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m       DEXTER TOTAL BANDWITH SERVER REMAINING      \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

2)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m     DEXTER TOTAL BANDWITH EVERY 5 MINUTES         \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -5

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

3)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m             DEXTER TOTAL HOURLY BANDWITH         \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -h

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

4)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m TOTAL DAILY BANDWITH \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""

vnstat -d

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

5)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m TOTAL BANDWITH EACH MONTH • \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""

vnstat -m

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

6)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m TOTAL BANDWITH EACH YEAR \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""

vnstat -y

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

7)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m HIGHEST TOTAL BANDWITH \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""

vnstat -t

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

8)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m HOURLY USED STATISTICS \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""

vnstat -hg

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

9)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m CURRENT LIVE BANDWITH \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m Press [ Ctrl+C ] To-Exit \e[0m"
echo -e ""

vnstat -l

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

10)
clear 
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e "\e[1;34m LIVE TRAFFIC BANDWITH USAGE \e[0m"
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""

vnstat -tr

echo -e ""
echo -e "\e[1;33m ---------------------------------------- ---------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

0)
sleep 1
m-system
;;
x)
exit
;;
*)
echo -e ""
echo -e "You pressed the wrong key"
sleep 1
bw
;;
esac
