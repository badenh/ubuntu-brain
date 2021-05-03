#!/bin/bash
# script to find the Fedora RPMs for NeuroFedora

# basically get the full list of fedora packages, pick out ones that match neurofedora, then get them one at a time

# badenh@ubuntu:~$ wget https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/33/Everything/x86_64/os/Packages/n/
# badenh@ubuntu:~$ cat index.html | grep neurord | cut -d \" -f 6
# neurord-3.2.2-12.fc33.noarch.rpm
# neurord-javadoc-3.2.2-12.fc33.noarch.rpm
# badenh@ubuntu:~$ cat index.html | grep neurord | cut -d \" -f 6 | while read i; do wget https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/33/Everything/aarch64/os/Packages/n/$i; done
