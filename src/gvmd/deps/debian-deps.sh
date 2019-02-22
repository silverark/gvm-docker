#!/usr/bin/env bash

# DEBIAN - BUILD

# gvm

# base
BASE="
git
cmake
gcc
make
"

# deps
DEPS="
pkg-config
libglib2.0-dev
libgnutls28-dev
libical-dev
gnutls-bin
"

# opt
OPT="
doxygen
xmltoman
xsltproc
sqlfairy
libsqlite3-dev
libpq-dev
postgresql-server-dev-9.6
texlive-latex-base
xsltproc
xmlstarlet
zip
rpm
dpkg
fakeroot
nsis
gnupg
wget
sshpass
ssh-client
socat
snmp
smbclient
python3
python3-lxml
haveged
"

apt update -y && \
apt install -y --no-install-recommends --fix-missing ${BASE} ${DEPS} ${OPT} && \
rm -rf /var/lib/apt/lists/*

# Remove packages
#apt remove -y ${BASE} ${DEPS} ${OPT}
apt autoremove -y