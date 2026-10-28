#!/bin/bash
clear
aur_helper=$(command -v yay || command -v paru)
figlet -f smslant "Cleanup"
echo
$aur_helper -Scc
