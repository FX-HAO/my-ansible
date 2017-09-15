#!/bin/bash

cat > /etc/profile.d/autologout.sh <<EOF 
TMOUT=300
readonly TMOUT
export TMOUT
EOF
chmod +x /etc/profile.d/autologout.sh

