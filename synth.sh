#!/bin/bash
#load synth setup

sudo python3 /home/pi/Desktop/nocturn.py &
cd /home/pi/Desktop/
pd-extended -alsamidi -nogui -rt -alsa -open synth.pd &

#qsynth &
#fluidsynth -si -a alsa -g 1  /home/pi/Desktop/GM.sf2 &

until $(aconnect 20:0 'Pure Data':0); do sleep 1; done #repeat until returns 0
#until $(aconnect 'Pure Data':2 'FLUID Synth':0); do sleep 1; done

