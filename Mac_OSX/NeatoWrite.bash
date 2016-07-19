#!/usr/bin/env bash
#Copyright (C) 2016 Nicolas Alliot under MIT license available at : https://github.com/novastra/NeatoWrite/blob/master/LICENSE

#Setting instructions for writable characters. Use bash 4 for associatives array
declare -A alphabet
alphabet["M"]='echo "M" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 3 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor 400 400 200" > "$port" && sleep 2 && echo "setmotor 0 720 200" > "$port" && sleep 5 && echo "setmotor 400 400 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor 500 500 200" > "$port" && sleep 3 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 100 100 200" > "$port" && sleep 2'
alphabet["R"]='echo "R" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor 300 300 200" > "$port" && sleep 2 && echo "setmotor -270 270 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor -90 90 200" > "$port" && sleep 2 && echo "setmotor 100 100 200" > "$port" && sleep 2'
alphabet["I"]='echo "I" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor 360 -360 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 1 && echo "setmotor 100 100 200" > "$port" && sleep 2'
alphabet["P"]='echo "P" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor -360 360 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2'
alphabet["O"]='echo "O" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 0 1440 200" > "$port" && sleep 8 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2'
alphabet[" "]='echo "Space" && echo "setmotor 500 500 200" > "$port" && sleep 2'
alphabet["A"]='echo "A" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor 150 150 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 150 150 200" > "$port" && sleep 2 && echo "setmotor 360 -360 200" > "$port" && sleep 2 && echo "setmotor 150 150 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 150 150 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 100 100 200" > "$port" && sleep 2'
alphabet["B"]='echo "B" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor -360 360 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor -360 360 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2'
alphabet["C"]='echo "C" && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor -360 360 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor 360 -360 200" > "$port" && sleep 2 && echo "setmotor 0 720 200" > "$port" && sleep 5 && echo "setmotor 100 100 200" > "$port" && sleep 2'
alphabet["D"]='echo "D" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 720 0 200" > "$port" && sleep 5 && echo "setmotor -360 360 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2'
alphabet["E"]='echo "E" && echo "setmotor 100 100 200" > "$port" && sleep 2 && echo "setmotor 0 1440 200" > "$port" && sleep 8 && echo "setmotor 100 100 200" > "$port" && sleep 2 && echo "setmotor 100 100 200" > "$port" && sleep 2'
alphabet["F"]='echo "F" && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2 && echo "setmotor 360 -360 200" > "$port" && sleep 4 && echo "setmotor 300 300 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 250 250 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 150 150 200" > "$port" && sleep 2 && echo "setmotor 360 -360 200" > "$port" && sleep 4 && echo "setmotor 150 150 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 250 250 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2'
alphabet["G"]='echo "G" && echo "setmotor 500 500 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 200 200 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 200 200 200" > "$port" && sleep 2 && echo "setmotor -270 270 200" > "$port" && sleep 3 && echo "setmotor 1440 0 200" > "$port" && sleep 6 && echo "setmotor 360 -360 200" > "$port" && sleep 3 && echo "setmotor 0 1440 200" > "$port" && sleep 6 && echo "setmotor 270 -270 200" > "$port" && sleep 3 && echo "setmotor 200 200 200" > "$port" && sleep 2 && echo "setmotor 180 -180 200" > "$port" && sleep 2 && echo "setmotor 200 200 200" > "$port" && sleep 2 && echo "setmotor -180 180 200" > "$port" && sleep 2 && echo "setmotor 300 300 200" > "$port" && sleep 2'

#Get the port automatically by 10min filter or allow to define manually
if [ $(find /dev/cu* -maxdepth 1 -mmin -10) ]
then
	port=$(find /dev/cu* -maxdepth 1 -mmin -10)
else
	find /dev/cu* -maxdepth 1 -mtime -1
	read -p "Could not find the last connected port, type the full path to the port (above are the last connected):" -e port
fi

#Initialize serial port
stty -f "$port" cs8 9600 ignbrk -brkint -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts
sleep 2

#Ensure that the port is ready
echo "" > "$port"
sleep 1

#Start testmode
echo "testmode on" > "$port"
sleep 2

#Play sound when ready
echo "playsound 1" > "$port"
echo "Ready to go"
sleep 1

read -p "Type text to write with your bot :" -e message

#Loops to get each letter and get the set of corresponding commands to send to the bot
for (( i=0; i<${#message}; i++ ))
do
	for x in "${!alphabet[@]}"
	do
		if [ "$x" == "${message:$i:1}" ]
		then
			eval "${alphabet[$x]}"
		fi
	done  
done

#Play sound when finished
echo "playsound 2" > "$port"
echo "Finished : shutting down"
sleep 2

#Turn testmode off
echo "testmode off" > "$port"
