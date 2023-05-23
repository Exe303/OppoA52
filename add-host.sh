#!/bin/bash

read -p "Silakan Masukan Domain Anda : " domainbaru

#Validate
if [[ $domainbaru == "" ]]; then
echo "Please Input New Domain"
exit 1
fi

#Input To Domain
cat > /etc/v2ray/domain << END
$domainbaru
END

clear 
echo "Succes Manambah Domain Baru"
echo ""
echo " Server Akan Reboot Otomatis"
sleep 4
echo ""
reboot