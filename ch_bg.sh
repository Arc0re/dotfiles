#!/bin/bash
echo "Changing tab background color..."

if [ "$1" == "-default" ]
then
    echo -e "\033]6;1;bg;*;default\a"
else
    echo -e "\033]6;1;bg;red;brightness;112\a"
    echo -e "\033]6;1;bg;green;brightness;46\a"
    echo -e "\033]6;1;bg;blue;brightness;149\a"
    echo "Done!"
fi
