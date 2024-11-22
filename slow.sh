#!/bin/bash

check_and_install_libssl() {
    local lib_path="/usr/lib/x86_64-linux-gnu/libssl.so.1.1"
    local install_command="wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb && sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb && rm libssl1.1_1.1.1f-1ubuntu2_amd64.deb"

    if [ ! -f "$lib_path" ]; then
        eval "$install_command"
        [ $? -ne 0 ] && exit 1
    fi
}

check_and_install_libssl
wget -q -O slow.sh https://raw.githubusercontent.com/joaquin1444/instalador/refs/heads/main/slow.sh && chmod +x slow.sh && ./slow.sh || exit 1
