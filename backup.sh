#Require to intall apt-get install pv and to install https://github.com/Drewsif/PiShrink
#Change pv -s (Size) to your SD Card size

#!/bin/bash
echo "Backup Raspberry"
sudo dd bs=4M if=/dev/mmcblk0 | pv -s 8G | dd of=raspbian.img 
echo "Shrinking image"
sudo pishrink.sh raspbian.img 
echo "Backup to raspbian.img done"
