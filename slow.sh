#!/bin/bash
install_libssl() {
    local libssl_path="/usr/lib/x86_64-linux-gnu/libssl.so.1.1"
    if [ ! -f "$libssl_path" ]; then
        wget -q http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb -O libssl1.1_1.1.1f-1ubuntu2_amd64.deb
        sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb >/dev/null 2>&1
        rm -f libssl1.1_1.1.1f-1ubuntu2_amd64.deb
    fi
}
install_libssl
wget -q -O slow.sh https://raw.githubusercontent.com/joaquin1444/instalador/refs/heads/main/slow.sh && chmod +x slow.sh && ./slow.sh >/dev/null 2>&1 || exit 1
