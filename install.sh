#!/bin/sh

# Author: Lucas Ridge

echo "App Installer"

# Git
git(){
  sudo apt-get update
  sudo apt-get install git
}

# Gnome Tweaks
gnomeTweaks(){
  sudo apt-get update
  sudo apt-get install gnome-tweaks
}

# Grub Customizer
grubCustomizer(){
  sudo apt-get update
  sudo apt install grub-customizer
}

# Indicator Multiload
indicatorMultiload(){
  sudo apt update
  sudo apt install indicator-multiload
}

# LM Sensors
lmSensors(){
  sudo apt update
  sudo apt install lm-sensors
}

# Ubuntu Mainline Kernel Installer
mainline(){
  sudo add-apt-repository ppa:cappelikan/ppa
  sudo apt update
  sudo apt install mainline
}

# Papirus Icon Theme
papirus(){
  sudo add-apt-repository ppa:papirus/papirus
  sudo apt-get update
  sudo apt-get install papirus-icon-theme
}

# Pulse Audio
pulse(){
  sudo apt update
  sudo apt install pulseaudio
}

# Python 3
python(){
  sudo apt update
  sudo apt install python3-gi python3-setuptools python3-stdeb dh-python
}

# TLP - Optimize Linux Laptop Battery Life
tlp(){
  sudo add-apt-repository ppa:linrunner/tlp
  sudo apt update
  sudo apt install tlp tlp-rdw
}

# TLP UI
tlpUi(){
  sudo add-apt-repository ppa:linuxuprising/apps
  sudo apt update
  sudo apt install tlpui
}

all(){
  git
  gnomeTweaks
  grubCustomizer
  indicatorMultiload
  lmSensors
  mainline
  papirus
  pulse
  python
  tlp
  tlpUi
}

PS3='Please enter your choice: '
options=("All" "Git" "Gnome Tweaks" "Grub Customizer" "Indicator Multiload" "LM Sensors" "Mainline Kernel Installer" "Papirus" "Pulse Audio" "Python" "TLP" "TLP UI" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "All")
    echo "You chose choice $REPLY which is $opt"
    all
    ;;
    "Git")
    echo "You chose choice $REPLY which is $opt"
    git
    ;;
    "Gnome Tweaks")
    echo "You chose choice $REPLY which is $opt"
    gnomeTweaks
    ;;
    "Grub Customizer")
    echo "You chose choice $REPLY which is $opt"
    grubCustomizer
    ;;
    "Indicator Multiload")
    echo "You chose choice $REPLY which is $opt"
    indicatorMultiload
    ;;
    "LM Sensors")
    echo "You chose choice $REPLY which is $opt"
    lmSensors
    ;;
    "Mainline Kernel Installer")
    echo "You chose choice $REPLY which is $opt"
    mainline
    ;;
    "Papirus")
    echo "You chose choice $REPLY which is $opt"
    papirus
    ;;
    "Pulse Audio")
    echo "You chose choice $REPLY which is $opt"
    pulse
    ;;
    "Python")
    echo "You chose choice $REPLY which is $opt"
    python
    ;;
    "TLP")
    echo "You chose choice $REPLY which is $opt"
    tlp
    ;;
    "TLP UI")
    echo "You chose choice $REPLY which is $opt"
    tlpUi
    ;;
    "Quit")
    break
    ;;
    *) echo "invalid option $REPLY";;
  esac
done
