#!/bin/bash
#Leax Alejandro Perez
#1866817
privIP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' )
publicIP=$(curl ifconfig.me | grep ".")
IFS='.' read -ra mask <<< "$privIP"

scanner(){
	echo "Scanning Mask: "$1
	out=$(nmap -Pn -p 1,100 $1)
	printf "Scanner Output \n $out"
}


echo 'Private IP: '$privIP
echo 'Public IP: '$publicIP

scanner ${mask[0]}"."${mask[1]}"."${mask[2]}".0/24"
