#!/bin/bash

docker run -ti --rm --privileged  --net host -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd -e DISPLAY=unix$DISPLAY  -v $XSOCK:$XSOCK -v /sbin:/sbin -v $HOME/.Xauthority:/root/.Xauthority  -v /run/dbus/:/run/dbus/  -v /dev:/dev -v /lib:/lib rotors_simulation:1.0.1 bash
