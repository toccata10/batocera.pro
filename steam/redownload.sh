#!/bin/bash

# Get the machine hardware name
architecture=$(uname -m)

# Check if the architecture is x86_64 (AMD/Intel)
if [ "$architecture" != "x86_64" ]; then
    echo "This script only runs on AMD or Intel (x86_64) CPUs, not on $architecture."
    exit 1
fi


Clear 

# Function to display animated title
animate_title() {
    local text="Downloading Conty Container"
    local delay=0.1
    local length=${#text}

    for (( i=0; i<length; i++ )); do
        echo -n "${text:i:1}"
        sleep $delay
    done
    echo
}



# Main script execution
clear
animate_title
display_controls

cvlc https://github.com/trashbus99/batocera-addon-scripts/raw/main/media/wait.mp3 --repeat >/dev/null 2>&1 &


   
wget batocera.pro/app/conty.sh -O ~/pro/steam/conty.sh 


# Step 4: Make conty.sh executable
chmod +x ~/pro/steam/conty.sh

killall -9 vlc
echo "DONE"
sleep 5
