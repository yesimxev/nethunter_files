#!/bin/bash
wget http://old.kali.org/kali/pool/main/s/systemd/udev_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libudev-dev_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libsystemd-shared_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libudev1_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libpam-systemd_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/systemd-sysv_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libsystemd-dev_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libsystemd0_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/systemd-timesyncd_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/libnss-systemd_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/systemd_259.1-1_arm64.deb
wget http://old.kali.org/kali/pool/main/s/systemd/systemd-cryptsetup_259.1-1_arm64.deb
dpkg -i *.deb
apt install -f -y
apt-mark hold udev libpam-systemd libsystemd-shared systemd-sysv libsystemd-dev libsystemd0 systemd-timesyncd libnss-systemd libudev1 libudev-dev systemd systemd-cryptsetup systemd-timesyncd

