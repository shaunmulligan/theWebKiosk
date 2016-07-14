chmod 777 /dev/vchiq

cp /opt/vc/lib/* /usr/lib/arm-linux-gnueabihf/
ldconfig
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host_run/dbus/system_bus_socket
su - pi -c /opt/oxide/start.sh
