#!/bin/bash

set -x

local_git_folder="/opt/kubectx"
local_bin_folder="/usr/local/bin"

#Kubens instalation for Linux
if [ ! -d  ${local_git_folder} ]; then
    sudo git clone https://github.com/ahmetb/kubectx ${local_git_folder}
else
    sudo sh -c cd $local_git_folder
    git pull
fi

if [ ! -e "${local_bin_folder}/kubectx" ]; then
    sudo ln -s "${local_git_folder}/kubectx" "${local_bin_folder}/kubectx"
fi

if [ ! -e "${local_bin_folder}/kubens" ]; then
    sudo ln -s "${local_git_folder}/kubens" "${local_bin_folder}/kubens"
fi
