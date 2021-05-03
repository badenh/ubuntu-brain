# !/bin/bash
# wrapper script

date
echo "ubuntu-brain will install the contents of NeuroFedora and COPR onto this system"
sudo bash scrape_packages.sh
sudo bash find_packages.sh
sudo bash convert_packages.sh
sudo bash install_packages.sh
echo "ubuntu-brain is complete and the contents of NeuroFedora and COPR are installed on this system"
date

