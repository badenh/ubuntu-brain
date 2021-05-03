#!/bin/bash
# script that scrapes package list from NeuroFedora and COPR to bootstrap the software instalaltion

wget https://pagure.io/neuro-sig/documentation/blob/main/f/modules/ROOT/pages/compneuro-tools.adoc
wget https://pagure.io/neuro-sig/documentation/blob/main/f/modules/ROOT/pages/copr.adoc

cat compneuro-tools.adoc | grep sudo | grep install | cut -d \` -f 2 > packagelist
cat copr.adoc | grep sudo | grep install | cut -d \` -f 2 >> packagelist
cat packagelist | sed s/dnf/apt-get/g > packagelist
echo " NeuroFedora and COPR package list"
cat packagelist

