
cp /opt/vc/lib/* /usr/lib/arm-linux-gnueabihf/
ldconfig
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host_run/dbus/system_bus_socket
chmod 777 /dev/vchiq
groups pi
su - pi -c /opt/oxide/start.sh
