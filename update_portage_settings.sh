#!/bin/bash

echo "Updating portage settings..."
mkdir -p /var/cache/portage-packages
sed -i -e 's#PKGDIR="${PORTDIR}/packages"#PKGDIR="/var/cache/portage-packages"#g' /etc/portage/make.conf
mkdir -p /var/cache/portage-distfiles
sed -i -e 's#DISTDIR="${PORTDIR}/distfiles"#DISTDIR="/var/cache/portage-distfiles"#g' /etc/portage/make.conf
mkdir -p /etc/portage/package.use
mkdir -p /etc/portage/package.keywords
mkdir -p /etc/portage/package.unmask
