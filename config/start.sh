#!/bin/bash
if ! [ -e "./firstboot" ]; then
	touch firstboot
	echo Setup completed, you can now start the docker container
	exit 0
fi;

rm -rf /tmp/*
rm -rf /tmp/.*

su logic -c "bash ./startWM.sh"

cp /home/logic/.Xauthority /root/

#start logic
./Logic/Logic
