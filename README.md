# fpd-link-camera-serializer
CSI to FDP link serializer board based on the Texas instruments DS90UB953 up to 2.3MP/60fps. Power over coax implementation at 24V cable supply. The board has different I2C sensors to interface with over the I2C - FPD Link Channel. The different sensors are described in the I2C-Sensor section 

## I2C Sensors

### Accelerometer (0x19)
There is a 6-axis Motion Tracking IC installed on the fpd-link-camera-serializer (BMI088). It's purpose is to detecting vibrations or motions. 
Datasheet: https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bmi088-ds001.pdf

### Gyroscope (0x68)
It's the same BMI088 Chip. 

### Temperature Sensor (0x48) 
There is also a Temperature sensor (TMP1075) installed for detecting envioronment paramenters, which could affect the camera sensor. 
Datasheet: https://www.ti.com/lit/ds/symlink/tmp1075.pdf

### PCA9685 (0x40) 
For interacting with LEDs, for generating local light on the camera side, there is a LED Controller installed (PCA9685). 
Datasheet: https://www.nxp.com/docs/en/data-sheet/PCA9685.pdf
