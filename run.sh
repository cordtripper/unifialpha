#!/bin/bash

if [[ ! -f /var/lib/unifi/data/keystore ]]; then
    keytool -genkey -keyalg RSA -alias unifi -keystore /var/lib/unifi/data/keystore -storepass aircontrolenterprise -keypass aircontrolenterprise -validity 1825 -keysize 4096 -dname "cn=unfi"
fi

exec /usr/lib/jvm/java-8-oracle/jre/bin/java -Xmx1024M -jar /var/lib/unifi/lib/ace.jar start
