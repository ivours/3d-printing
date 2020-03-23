#!/bin/bash

VIDEO_DEVICE=$1
PORT=$2

screen -d -m -S $VIDEO_DEVICE vlc v4l2:///dev/$VIDEO_DEVICE --sout "#transcode{vcodec=mjpg}:std{access=http,mux=mpjpeg,dst=0.0.0.0:$PORT}"
