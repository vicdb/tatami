#!/bin/sh
#
# description: Uninstalls Tatami on Ubuntu
# This script must be run by the "root" user.
#
# Run this script directly by typing :
# ﻿curl -L https://github.com/ippontech/tatami/raw/master/etc/installation/ubuntu/uninstall.sh | sudo bash
#
# - Deletes the "/opt/tatami"
# - Deletes the "tatami" user

echo "Remove Tatami user"

# Remove JNA settings
sed -i '/tatami/d' /etc/security/limits.conf

userdel -f -r tatami

echo "Delete Tatami directory"
rm -rf /opt/tatami