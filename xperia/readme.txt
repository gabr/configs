Following steps will guide you through.

Connect your phone to the laptop and list your devices in a terminal using lsusb command

Find a line similar to Bus 002 Device 012: ID 0fce:5169 Sony Ericsson Mobile Communications AB and note your vendor and product id which are 0fce and 5169 respectively in the above line. If you have USB debugging disabled, product id will be 0169. Now Unplug the phone.

Go to humans-enabled.com and install the latest version of libmtp and copy the 69-libmtp.rules file to /etc/udev/rules.d as described

Optional step

Xperia S support is implemented in the libmtp-1.1.3 release. If you use the latest version from sourceforge.net, skip to step 5.

type sudo gedit /etc/udev/rules.d/69-libmtp.rules to edit the copied file as root.

Add the following text somewhere around the sony ericsson devices in this file. You can find them by searching for 0fce. Remember to set the correct vendor and product id

ATTR{idVendor}=="0fce", ATTR{idProduct}=="5169", SYMLINK+="libmtp-%k", ENV{ID_MTP_DEVICE}="1", ENV{ID_MEDIA_PLAYER}="1" ATTR{idVendor}=="0fce", ATTR{idProduct}=="0169", SYMLINK+="libmtp-%k", ENV{ID_MTP_DEVICE}="1", ENV{ID_MEDIA_PLAYER}="1"

reboot, or use sudo udevadm control --reload-rules to actualize.

The phone will mount automatically when you plug it. Use nautilus to copy files
