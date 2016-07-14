The Web Kiosk

Got this error:
```
root@raspberrypi2-b16464:~# /opt/oxide/start.sh
libEGL warning: DRI3: xcb_connect failed
libEGL warning: DRI2: xcb_connect failed
libEGL warning: DRI2: xcb_connect failed
Could not initialize egl display
```
fixed with:
```
cp /opt/vc/lib/* /usr/lib/arm-linux-gnueabihf/
ldconfig
```
got this error:
```
libasound.so.2: cannot open shared object file
```
fixed with:
```
apt-get install libasound2
```

Chromium engine needs to be run as non-root:
```
useradd -m pi

gpasswd -a pi video
```

==========
$ groups pi

pi adm dialout cdrom sudo audio video plugdev games users input netdev api i2c gpio

```
root@raspberrypi2:/opt/oxide# su pi                                                                                                                                                                    
pi@raspberrypi2:/opt/oxide$ ./start.sh                                                                                                                                                            
* failed to open vchiq instance
```
Fixed by:
```
root@raspberrypi2:/opt/oxide#  chmod 777 /dev/vchiq  
```
