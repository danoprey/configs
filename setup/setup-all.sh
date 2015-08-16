#!/bin/bash
#setup-all.sh
#
#Written by Dan O'Prey 	2015-08-14
#Last Modified		2015-08-14
#
#Only supports Ubuntu variants
#


#Install All Tools
function setup_all(){

  echo "####################################"
  echo "Update System"
  echo "####################################"
  # sudo apt-get update

  bash setup-dev.sh
  bash setup-gui.sh



echo "####################################"
echo "Set up complete. Please re-login for full changes."
}






#######################################
setup_all

