#!/bin/bash
clear

echo -e "\e[1;34m Presents \e[0m"
echo -e "\e[1;32m bomber \e[0m"
echo "Press Enter To Continue"
read a1
if [[ -s update.speedx ]];then
echo "All Requirements Found...."
else
echo 'Installing Requirements....'
echo .
echo .
apt install figlet toilet python curl -y
pip install urllib3 --user
pip install requests --user
echo This Script Was Made By Johnny Sins >update.speedx
echo Requirements Installed....
echo Press Enter To Continue...
read upd
fi
while :
do
clear
echo -e "\e[1;31m"
figlet bomber
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"


echo " "
echo -e "\e[4;31m Please Read Instruction Carefully !!! \e[0m"
echo " "
echo "Press 1 To  Start SMS Bomber "
echo "Press 2 To  Start Call Bomber "
echo "Press 3 To  Update (Works On Linux And Linux Emulators) "
echo "Press 4 To  Protect Your Number "
echo "Press 5 To  View Features "
echo "Press 6 To  Exit "
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
python3 bomber.py
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
python3 bomber.py call
elif [ $ch -eq 3 ];then
clear
apt install git -y
echo -e "\e[1;34m Downloading Latest Files..."
git clone https://github.com/TheSpeedX/TBomb
if [[ -s bomber/bomber.sh ]];then
cd bomber
cp -r -f * .. > temp
cd ..
rm -rf  bomber >> temp
rm update.speedx >> temp
rm temp
chmod +x bomber.sh
fi
echo -e "\e[1;32m TBomb Will Restart Now..."
echo -e "\e[1;32m All The Required Packages Will Be Installed..."
echo -e "\e[1;34m Press Enter To Proceed To Restart..."
read a6
./bomber.sh
exit
elif [ $ch -eq 4 ];then
clear
echo -e "\e[1;32m"
python3 bomber.py protect
elif [ $ch -eq 5 ];then
clear
echo -e "\e[1;33m"
echo -e "\e[1;34mCreated By \e[1;34m"
toilet -f mono12 -F border JOHNNYSINS
echo  " "
echo -e "\e[1;32m                   Features\e[1;34m"
echo "  [+] Unlimited And Super-Fast Bombing"
echo "  [+] International Bombing"
echo "  [+] Call Bombing "
echo "  [+] Protection List"
echo "  [+] Automated Future Updates"
echo "  [+] Easy To Use And Embed in Code"
echo ""
echo ""
echo -e "\e[1;31m This Script is Only For Educational Purposes or To Prank.\e[0m"
echo -e "\e[1;31m Do not Use This To Harm Others. \e[0m"
echo -e "\e[1;31m I Am Not Responsible For The Misuse Of The Script. \e[0m"
echo -e "\e[1;32m Make Sure To Update it If It Does not Work.\e[0m"
echo  " "
echo -e "\e[4;31m That's All !!!\e[0m"
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo "Press Enter To Go Home"
read a3
clear
elif [ $ch -eq 6 ];then
clear
echo -e "\e[1;31m"
figlet JOHNNYSINS
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo " "
exit 0
else
echo -e "\e[4;32m Invalid Input !!! \e[0m"
echo "Press Enter To Go Home"
read a3
clear
fi
done
