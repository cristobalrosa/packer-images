#!/bin/bash

#update the system repositories. 
apt-get update
#Install some packages we need before install ansible.
apt-get -y install curl

