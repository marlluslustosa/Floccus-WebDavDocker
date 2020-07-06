#!/bin/sh

cd /var/floccuswebdav/
sed -i 's/usertochange/\'"$USER"'/g ; s/passtochange/\'"$PASS"'/g' floccus.yaml
wsgidav -c floccus.yaml
