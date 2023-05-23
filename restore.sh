#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
echo "Fitur Ini Hanya Bisa Digunakan Sesuai Data Vps Dengan Autoscript Ini"
echo "Silahkan masukan link ke file backup data vps anda."
echo "Anda dapat memeriksanya di email Anda jika Anda menjalankan backup data vps sebelumnya."
read -rp "Link File Backup Anda: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
cp -r v2ray /etc/
cp -r udp /root/
cp -r public_html /home/vps/
cp crontab /etc/
strt
rm -rf /root/backup
rm -f backup.zip
echo Done
