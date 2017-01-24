#!/bin/bash

input="/path/to/your/file.zip"
gpg -c --passphrase "coffee" $input #encrypt file.zip with passphrase coffee (most secure passwd known to mankind)

if nc -z remote.server.com 22 2>/dev/null; then #check if remote server is online, if online - send it with scp
  scp -P 22 "/path/to/file.zip.gpg" coffee@remote.server.com:/path/on/remote.server.com/ #make sure you can write in this folder as user "coffee"
else
	break 	#you'd prolly send mail here telling sysop something's up
fi