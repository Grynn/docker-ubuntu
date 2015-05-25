#!/bin/bash
#Sure we can do this in a Dockerfile
#and get some (dubious) layers / caching
#but we can run a bash script anywhere
#lxc/openvz/kvm whatever

set -e

[ `id -u` == 0 ] || (echo "Sorry $(basename $0) must be run as root"; exit -1)

export DEBIAN_FRONTEND=noninteractive
sed -i 's/\/archive.ubuntu/\/in.archive.ubuntu/' /etc/apt/sources.list

#Update & upgrade packages
apt-get update -qy 
apt-get upgrade -qy
apt-get install -qy software-properties-common 

# Fix locale
locale-gen en_US en_US.UTF-8
dpkg-reconfigure locales
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

# Add PPAs
for repo in ppa:ondrej/php5-5.6 ppa:webupd8team/java ppa:git-core/ppa 
do
	apt-add-repository -y $repo 
done

# Add NodeSource (was Chris-Lea nodejs ppa)
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | bash -

#Pre-download (cache) useful packages
#NOTE ** PREVIOUS STEP (nodesource) runs apt-get update, so we wont do it again **
apt-get install -dy nginx php5 php5-fpm apache2 redis-server redis-tools nodejs git mysql-server 

unset DEBIAN_FRONTEND
