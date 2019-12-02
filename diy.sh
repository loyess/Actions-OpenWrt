#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Make K2 support 32M + 256M
sed -i '44s/partition@20000/partition@30000/' target/linux/ramips/dts/PSG1218.dtsi
sed -i '50s/partition@30000/partition@40000/' target/linux/ramips/dts/PSG1218.dtsi
sed -i '56s/partition@40000/partition@50000/' target/linux/ramips/dts/PSG1218.dtsi
sed -i 's/0x7b0000/0x1fb0000/' target/linux/ramips/dts/PSG1218.dtsi
sed -i '/\ \ DTS\ \:\=\ PSG1218A/a\\ \ IMAGE_SIZE\ \:\=\ \$\(ralink_default_fw_size_32M\)' target/linux/ramips/image/mt7620.mk

