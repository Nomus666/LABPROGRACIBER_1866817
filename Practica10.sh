#!/bin/bash

send_email(){
    echo 'Sending Email' 
    echo -e 'Email: botleaxtest00@gmail.com\nTo: '$email'\nSubject: ' $subject '\n'$body > email.txt
    curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
        --mail-from $from --mail-rcpt $email \
        --upload-file email.txt --user $from":"$pass
    rm email.txt
    echo -e "Message Sent\n"
}


if [ -z "$1" ] && [ -z "$2" ] &&[ -z "$3" ] &&[ -z "$4" ] &&[ -z "$5" ];then
    echo -e 'Help \nYou need to add argumentos in this order \n"To Email" "Subject" "Body" "From Email" "Password Of From Email"'
else
    email=$1 
    subject=$2
    body=$3
    from=$4
    pass=$5
    send_email
fi
