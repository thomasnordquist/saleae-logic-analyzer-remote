#!/bin/bash
	DIR="/home/logic"
        tigervncserver -geometry $GEOMETRY -pixelformat rgb888 :1
	blackbox &
        # enable clipboard
        autocutsel -s CLIPBOARD -fork
        autocutsel -s PRIMARY -fork

        while true; do
                bsetbg $(find /usr/share/backgrounds/*.jpg | sort -R | tail -n 1);
                sleep 600;
        done &
