#!/bin/bash 

export HELM_VERSION=3.2.0
# can be either darwin (apple) or linux (but where has GNU disappeared ? :) )
export HELM_OS=linux
export HELM_CPU_ARCH=amd64

export DWNLD_URI=https://get.helm.sh/helm-v${HELM_VERSION}-${HELM_OS}-${HELM_CPU_ARCH}.tar.gz
DNWLDED_FILENAME=$(echo ${DWNLD_URI}|awk -F '/' '{print $NF}')

curl -LO ${DWNLD_URI}

tar -zxvf ./${DNWLDED_FILENAME}
sudo mv linux-amd64/helm /usr/local/bin/helm
helm version
