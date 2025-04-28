#!/bin/bash
# Cloud Shell Keepalive Script Template

while true
do
  echo "[$(date)] Pulling latest GitHub repo..."
  cd ~/cloudshell-config && git pull origin main
  sleep 86400
done
