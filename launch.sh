
cp /opt/vc/lib/* /usr/lib/arm-linux-gnueabihf/
ldconfig
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host_run/dbus/system_bus_socket
chmod 777 /dev/vchiq
chown root:pi /opt/oxide/usr/lib/arm-linux-gnueabihf/oxide-qt/chrome-sandbox
chmod 4755 /opt/oxide/usr/lib/arm-linux-gnueabihf/oxide-qt/chrome-sandbox
groups pi
su - pi -c /opt/oxide/start.sh $KIOSK_URL
