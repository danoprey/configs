#!/bin/bash
#.setup-xmonad.sh
#
#Written by Dan O'Prey 	2015-08-14
#Last Modified		2015-08-14
#
#Only supports Ubuntu variants
#


#Set up .xmonad/*
function setup_xmonad(){
  ln -s ../xmonad-ubuntu-conf ~/.xmonad
  #Invert mouse scrolling
  echo "pointer = 1 2 3 5 4 7 6 8 9 10 11 12" > ~/.Xmodmap && xmodmap ~/.Xmodmap


echo "####################################"
echo "Set up complete."
}

#######################################
setup_xmonad

