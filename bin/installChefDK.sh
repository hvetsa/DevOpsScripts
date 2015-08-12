#!/bin/bash

ChefDKPackageURL="https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.6.2-1_amd64.deb"

sudo mkdir /opt/KTDUD
sudo chmod 755 /opt/KTDUD
(cd /opt/KTDUD; wget ${ChefDKPackageURL})

sudo dpkg -i /opt/KTDUD/chefdk_0.6.2-1_amd64.deb

