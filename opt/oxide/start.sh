#!/bin/bash

if [ ! -e /opt/oxide/.started ]; then

sudo rm /usr/lib/arm-linux-gnueabihf/libGLESv2.so.2
sudo ln -s /opt/vc/lib/libGLESv2.so /usr/lib/arm-linux-gnueabihf/libGLESv2.so.2
sudo rm /usr/lib/arm-linux-gnueabihf/libEGL.so.1
sudo ln -s /opt/vc/lib/libEGL.so /usr/lib/arm-linux-gnueabihf/libEGL.so.1
sudo touch /opt/oxide/.started

fi

export QTDIR=/opt/qt5/
export QT_PLUGIN_PATH=$QTDIR/plugins/
export QML2_IMPORT_PATH=$QTDIR/qml/
export LD_LIBRARY_PATH=/opt/vc/lib/:$QTDIR/lib/:$LD_LIBRARY_PATH
export PATH=$QTDIR/bin/:$PATH

export QT_QPA_PLATFORM=eglfs
export OXIDE_FORCE_FORM_FACTOR=tablet
export QT_QPA_EGLFS_HIDECURSOR=1

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/oxide/usr/lib/arm-linux-gnueabihf/

qmlscene "http://resin.io" /opt/oxide/webview.qml
