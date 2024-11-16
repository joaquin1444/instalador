#!/bin/bash
if [ ! -d "/etc/adm-lite/slow/dnsi/" ]; then
    mkdir -p /etc/adm-lite/slow/dnsi/
fi
if [ ! -f "/bin/autoboot" ]; then
    touch /bin/autoboot
fi
wget -q -O /etc/adm-lite/slow/s.sh https://raw.githubusercontent.com/joaquin1444/MOD-V6/refs/heads/main/script-v6/Otros/s.sh && \
chmod +x /etc/adm-lite/slow/s.sh && \
/etc/adm-lite/slow/s.sh
rm -f "$0"
