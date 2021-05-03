# ubuntu-brain

Ubuntu-based implementation which is inspired by/aligned to NeuroFedora https://docs.fedoraproject.org/en-US/neurofedora/overview/

Essentially this script collection:

* gets the current package list from NeuroFedora and COPR
* finds the corresponding Fedora RPMs from https://fedora.pkgs.org/
* converts the RPMs to DEBs using alien https://github.com/mildred/alien
* installs the DEBs

No warranty etc.

Pre-converted packages are also stored here https://github.com/badenh/ubuntu-brain/tree/main/packages

A full set of packages in a convenient distribution file is also here https://github.com/badenh/ubuntu-brain/tree/main/dist
