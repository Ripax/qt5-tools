#!/bin/bash -e
# Name : teseABA
# Author : HTMLDigger.in
# create date : 29.05.2020

clear

Name='Auto install qt5' 
sver='1.5'
Author='HTMLDigger'
os=`uname -sm`

clean='\033[0m'
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[1;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
done='\e[1;38;5;82mSuccess'
can='\033[31mCancel'

# Date and time Print.
NOWDATE=$(date +"%m-%d-%Y")
NOWTIME=$(date +"%r")
#echo "todays date is : $NOW"
#resize -s 110 95

# Print my Banner.
echo -e "${White}*****************************************${clean}"
echo -e "${Green}╦ ╦╔╦╗╔╦╗╦  ╔╦╗┬┌─┐┌─┐┌─┐┬─┐ ${clean}"
echo -e "${White}╠═╣ ║ ║║║║   ║║││ ┬│ ┬├┤ ├┬┘ ${clean}"
echo -e "${Yellow}╩ ╩ ╩ ╩ ╩╩═╝═╩╝┴└─┘└─┘└─┘┴└─ ${clean}"
echo -e "${White}*****************************************${clean}"
# Banner end here.

# Print System date and time.
echo "todays date is : $NOWDATE"
echo "Time is : $NOWTIME"

echo -e "${White}*****************************************${clean}"
echo -e "${Blue}Scrip Name : ${clean} ${Yellow}${Name}${clean}${Green}v${sver}${clean}"
echo -e "${Purple}You are from : ${os} ${clean}"
echo -e "${White}*****************************************${clean}"

echo ""
echo "First you need to be update your system"
echo -e "${Purple}"
read -p "Do you want update your system (Highly Recommended) (Y/N)? " ans

if [ $ans = "y" ] || [ $ans = "Y" ]
then
    echo "Updating Packege index......."
    sudo apt-get update -y
    echo -e "${clean}"
    echo -e "${Black}"
    echo -e "Updating old Packege "
    sudo apt-get upgrade -y
    echo -e "${clean}"
    echo -e "${Green}successfully updated go ahed $USER${clean}"
fi

if [ $ans = "n" ] || [ $ans = "N" ]
then
    echo -e "${Yellow}"
    echo "FUCK YOU $USER YOU'r such a moron."
    echo -e "You should duble check your update.${clean}"
    echo "----------------- ERROR : You are not checked your update. -----------------"
    echo ""
fi
read -p "hi whats your Name : " name
if [ $name = "Anupam" ] || [ $name = "anupam" ]
then
    echo "Hi Admin good to see you. $USER welcome."
    cd /home/rion/MyWorks/bash/bin
    work
    PS1='\[\e[1;36m\][\u@\W]>\[\e[0m\]'
else
    clear
    # Print my Banner.
    echo -e "${White}*****************************************${clean}"
    echo -e "${Green}╦ ╦╔╦╗╔╦╗╦  ╔╦╗┬┌─┐┌─┐┌─┐┬─┐ ${clean}"
    echo -e "${White}╠═╣ ║ ║║║║   ║║││ ┬│ ┬├┤ ├┬┘ ${clean}"
    echo -e "${Yellow}╩ ╩ ╩ ╩ ╩╩═╝═╩╝┴└─┘└─┘└─┘┴└─ ${clean}"
    echo -e "${White}*****************************************${clean}"
    # Banner end here.
    echo -e "Nice To Meet You $name"
    echo -e "$Blue***************************************"
    echo "****** Name : $name              ******"
    echo "****** Script Name : $Name     ******"
    echo "****** Script version : $sver      ******"
    date
    echo -e "***************************************$clean"
fi
read -p "$name Do you want to install QT5 Creator & Designer (Y/N) ? " answ
if [ $answ = "Y" ] || [ $answ = "y" ]
then
    echo -e "Install Qt Creator"
    sudo apt-get install build-essential -y
    echo "successfully install build-essential."
    sudo apt-get install qtcreator -y
    echo "successfully install qtcreator."
    sudo apt-get install qt5-default -y
    echo "successfully install qt5-default."
    echo "Install documentation and examples now"
    sudo apt-get install qt5-doc -y
    sudo apt-get install qt5-doc-html qtbase5-doc-html -y
    sudo apt-get install qtbase5-examples -y
    pip3 install --user pyqt5
    sudo apt-get install python3-pyqt5 -y
    sudo apt-get install pyqt5-dev-tools -y
    sudo apt-get install qttools5-dev-tools -y
    echo -e "$done $os $NOWTIME"
fi
if [ $ans = "n" ] || [ $ans = "N" ]
then
    echo -e "$can$clean"
    echo -e "${Yellow}Thanks for using $Name Ver:$sver stay tune for update."
    echo "Please visit for more info : https://pyvfx.blogspot.com/"
fi