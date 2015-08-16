#!/bin/bash
#setup-dev.sh
#
#Written by Dan O'Prey 	2015-08-14
#Last Modified		2015-08-14
#
#Only supports Ubuntu variants
#


#Install Dev Related Tools
function setup_dev(){

  echo "####################################"
  echo "Update System"
  echo "####################################"
  # sudo apt-get update

  echo "####################################"
  echo "Install Basic Tools"
  echo "####################################"
  sudo apt-get install curl whois unzip python-setuptools
  sudo apt-get install i3lock scrot imagemagick
  sudo apt-get install guake terminator

  echo "####################################"
  echo "Install Git Tools"
  echo "####################################"
  sudo apt-get install git git-core git-extras

  echo "####################################"
  echo "Set up .bashrc"
  echo "####################################"
  bash .setup-bash.sh

  echo "####################################"
  echo "Install Vim Tools"
  echo "####################################"
  sudo apt-get install vim
  echo -e "alias vi='vim'" >> ~/.bashrc

  echo "####################################"
  echo "Install AWS Tools"
  echo "####################################"
#  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#  unzip awscli-bundle.zip
#  sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
#  rm awscli-bundle.zip
#  rm -rf awscli-bundle

  echo "####################################"
  echo "Install Cactus"
  echo "####################################"
  sudo easy_install cactus

  echo "####################################"
  echo "Install Xmonad WM Tools"
  echo "####################################"
  bash .setup-xmonad.sh


echo "####################################"
echo "Set up complete. Please re-login for full changes."
}






#######################################
setup_dev

