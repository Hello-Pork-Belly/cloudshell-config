#!/bin/bash
# Check Cloud Shell status for all regions

echo "==== 1. Checking Cloud Shell local git repo status ===="

for region in phoenix singapore-west melbourne
do
  echo ""
  echo "---- Checking region: $region ----"
  if [ -d ~/cloudshell-config/$region ]; then
    cd ~/cloudshell-config/$region
    git status
  else
    echo "Directory ~/cloudshell-config/$region not found."
  fi
done

echo ""
echo "==== 2. Checking keepalive script running ===="

ps aux | grep cloudshell-keepalive | grep -v grep

echo ""
echo "==== 3. Checking latest git pull for cloudshell-config ===="

cd ~/cloudshell-config
git pull origin main
