#!/bin/bash
# script to find the Fedora RPMs for NeuroFedora

# basically get the full list of fedora packages, pick out ones that match neurofedora, then get them one at a time

# badenh@ubuntu:~$ wget https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/33/Everything/x86_64/os/Packages/n/
ls index.html.* | while read i; do cat $i >> allindex; done

cat packagelist | while read i; do grep -i allindex >> extractindex; done

cat extractindex | cut -d \" -f 6 >> rpmlist

cat rpmlist | while read i; do wget ..

# badenh@ubuntu:~$ cat index.html | grep neurord | cut -d \" -f 6 | while read i; do wget https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/33/Everything/aarch64/os/Packages/n/$i; done
