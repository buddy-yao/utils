#!/usr/bin/env bash
set -e
ubuntu_16_04_kernel_version="4.4.0-124"
ubuntu_14_04_kernel_version="3.13.0-147"

version=$(lsb_release -r |awk '{print $2}')

if [ "$version" == "14.04" ]; then
    echo "current ubuntu version is $version"
    apt-get update
    command="apt-get install -y linux-image-$ubuntu_14_04_kernel_version"
    $command
elif [ "$version" == "16.04" ]; then
   echo "current ubuntu version is $version"
   apt-get update
   command="apt-get install -y linux-image-$ubuntu_16_04_kernel_version"
   $command
fi
