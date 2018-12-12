#!/bin/bash
kinit --password-file="/var/lib/awx/project/kerberos/pass" srv_ansible
export KRB5_KTNAME=FILE:/etc/squid/HTTP.keytab
net ads keytab CREATE
net ads keytab ADD HTTP
klist -k /etc/squid/HTTP.keytab
chgrp squid /etc/squid/HTTP.keytab
chmod g+r /etc/squid/HTTP.keytab

