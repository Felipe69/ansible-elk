#!/bin/bash
apt-get -s dist-upgrade| grep "^Inst" | grep -i security > /var/log/sec_updates-linux.log
