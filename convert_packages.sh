# !/bin/bash
# script to convert packages from RPMs to DEBs using alien

# sudo alien $RPM_NAME ... outputs $DEB_NAME
cat rpmlist | while read i; do sudo alien $i; done
echo "List of converted DEB packages"
ls *.deb > deblist
