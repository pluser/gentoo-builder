#!/bin/bash

echo "Introducing Gentoo repository..."
sed -i -e 's#PORTDIR="/usr/portage"#PORTDIR="/var/db/repos/gentoo"#g' /etc/portage/make.conf
mkdir -p /var/db/repos
emaint sync --repo gentoo
eselect profile set default/linux/amd64/17.0/systemd
rm -r /usr/portage
