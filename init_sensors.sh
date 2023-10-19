# Local 1 port FPD settings for get sensors from fpd-link-camera-serializer board with an EdgeKit from PCB Arts. 

export I2CPort=2
export I2CAddrDSER=0x30 
export I2CAddrSER=0x18

echo -e ""
echo -e "Initial Config FPDLink III Port 0 - Sensors"
echo -e ""

echo -e "Write FPD3_PORT_SEL (Address 0x4C) -- RX Port0 ENABLE REGISTER WRITE"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x4C
sudo i2cset -y $I2CPort $I2CAddrDSER 0x4C 0x01

echo -e "Write SER_ALIAS (Address 0x5C) -- 7-bit Remote Serializer Alias ID"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x5C
sudo i2cset -y $I2CPort $I2CAddrDSER 0x5C 0x20

echo -e "Write TARGET_ID_0 (Address 0x5D) -- SlaveID[0] add Accelerometer: 0x32 7bit / 0x19 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x5D
sudo i2cset -y $I2CPort $I2CAddrDSER 0x5D 0x32

echo -e "Write TARGET_ALIAS_0 (Address 0x65) -- SlaveAlias[0] add Accelerometer: 0x32 7bit / 0x19 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x65
sudo i2cset -y $I2CPort $I2CAddrDSER 0x65 0x32

echo -e "Write TARGET_ID_1 (Address 0x5E) -- SlaveID[1] add Gyroscope: 0xD0 7bit / 0x68 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x5E
sudo i2cset -y $I2CPort $I2CAddrDSER 0x5E 0xD0

echo -e "Write TARGET_ALIAS_1 (Address 0x66) -- SlaveAlias[1] add Accelerometer: 0xD0 7bit / 0x68 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x66
sudo i2cset -y $I2CPort $I2CAddrDSER 0x66 0xD0

echo -e "Write TARGET_ID_2 (Address 0x5F) -- SlaveID[2] add TMP1075: 0x90 7bit / 0x48 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x5F
sudo i2cset -y $I2CPort $I2CAddrDSER 0x5F 0x90

echo -e "Write TARGET_ALIAS_2 (Address 0x67) -- SlaveAlias[2] add TMP1075: 0x90 7bit / 0x48 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x67
sudo i2cset -y $I2CPort $I2CAddrDSER 0x67 0x90

echo -e "Write TARGET_ID_3 (Address 0x6A) -- SlaveID[3] add PCA9685: 0x80 7bit / 0x40 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x6A
sudo i2cset -y $I2CPort $I2CAddrDSER 0x6A 0x80

echo -e "Write TARGET_ALIAS_3 (Address 0x68) -- SlaveAlias[3] add PCA9685: 0x80 7bit / 0x40 8bit"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x68
sudo i2cset -y $I2CPort $I2CAddrDSER 0x68 0x80

echo -e "Write BCC_CONFIG (Address 0x58) -- BCC_CONFIG Register  = Enable I2C Pass-Through to Serializer if decode matches"
sudo i2cget -y $I2CPort $I2CAddrDSER 0x58
sudo i2cset -y $I2CPort $I2CAddrDSER 0x58 0x5E
