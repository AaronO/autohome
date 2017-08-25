FROM arm32v7/node:8.4.0

# Some native libs that homebridge needs
RUN apt-get update && apt-get -y install libavahi-compat-libdnssd-dev

# Homebridge
RUN npm install -g --unsafe-perm homebridge

# Start DBUS, Avahi then Homebridge
CMD /etc/init.d/dbus start && /etc/init.d/avahi-daemon start && homebridge
