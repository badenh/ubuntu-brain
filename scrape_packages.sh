#!/bin/bash
# script that scrapes package list from NeuroFedora and COPR to bootstrap the software instalaltion

wget https://pagure.io/neuro-sig/documentation/blob/main/f/modules/ROOT/pages/compneuro-tools.adoc
wget https://pagure.io/neuro-sig/documentation/blob/main/f/modules/ROOT/pages/copr.adoc

cat compneuro-tools.adoc | grep "sudo dnf install" > packagelist
cat copr.adoc | grep "sudo dnf install" >> packagelist
