#!/bin/sh

cd /var/floccuswebdav/
sed -i 's/usertochange/\'"$USER"'/g ; s/passtochange/\'"$PASS"'/g' floccus.yaml
/usr/bin/wsgidav -c floccus.yaml
