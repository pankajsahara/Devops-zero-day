#!/bin/bash

SERVICE="${1:-sshd}"
PORT="${2:22}"
CHECK="${3:-sshd -t}"
echo "===== Checking Service: $SERVICE ====="
systemctl status   $SERVICE                                 
journalctl -u  $SERVICE -n 20 --no-pager
ss -tlnp | grep  $PORT
echo  " $SERVICE check $CHECK"
echo " $SERVICE   CHECK COMPLETE ====="


