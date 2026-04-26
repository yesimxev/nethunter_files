#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]; then
	echo "Run it as root"
	exit 1
fi
file="/var/lib/dpkg/info/systemd.postinst"
if [ ! -f "$file" ]; then
	echo "$file not found"
	exit 1
fi
setline="$(grep -n 'set -e' $file | cut -d : -f 1 | head -n 1)"
exitline=$(($setline + 1))
sed -i "${exitline}i exit 0" $file
chmod 755 $file
dpkg --configure -a
apt --fix-broken install
apt-mark hold systemd systemd-sysv libpam-systemd udev
