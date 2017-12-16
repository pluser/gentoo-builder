#!/bin/bash

echo "Getting temporary repository..."
emerge-webrsync
echo 'dev-vcs/git -perl' >> /etc/portage/package.use/git
echo "Installing dev-vcs/git..."
emerge --quiet --buildpkg --usepkg --load-average $(cat /proc/cpuinfo | grep 'processor' | wc -l) dev-vcs/git app-portage/gentoolkit
