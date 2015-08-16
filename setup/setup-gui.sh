#!/bin/bash
#setup-gui.sh
#
#Written by Dan O'Prey 	2015-08-14
#Last Modified		2015-08-14
#
#Only supports Ubuntu variants
#


#Install GUI Software
function setup_gui(){

  echo "####################################"
  echo "Update System"
  echo "####################################"
#  sudo apt-get update

  echo "####################################"
  echo "Set up Unity"
  echo "####################################"
  dconf write /org/compiz/profiles/unity/plugins/core/hsize 3
  dconf write /org/compiz/profiles/unity/plugins/core/vsize 3
  #install unity-tweak-tool
  sudo apt-get install unity-webapps-service
  sudo apt-get install unity-tweak-tool
  #install dark theme and moka icons
  sudo add-apt-repository ppa:noobslab/themes
  sudo add-apt-repository ppa:moka/stable
  sudo apt-get update
  sudo apt-get install vertex-theme
  sudo apt-get install moka-icon-theme

  echo "####################################"
  echo "Install Web Browsers"
  echo "####################################"
  sudo apt-get install chromium-browser
  #Install Google Chrome
  sudo apt-get install libxss1 libappindicator1 libindicator7
#  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#  mv google-chrome-stable_current_amd64.deb ~/Downloads/google-chrome.deb
#  sudo dpkg -i ~/Downloads/google-chrome.deb
#  rm ~/Downloads/google-chrome.deb

  echo "####################################"
  echo "Install Communications"
  echo "####################################"
  sudo apt-get install vlc

  echo "####################################"
  echo "Install Communications"
  echo "####################################"
  #Install Skype
#  sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
#  sudo apt-get update 
  sudo apt-get install skype


echo "####################################"
echo "Set up complete."
}






#######################################
setup_gui

