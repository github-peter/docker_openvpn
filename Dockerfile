FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install openvpn wget

# Inspired from https://www.tinfoilsecurity.com/blog/dont-get-pwned-on-public-wifi-use-your-own-vpn-tutorial-guide-how-to

RUN wget https://raw.githubusercontent.com/tinfoil/openvpn_autoconfig/master/bin/openvpn.sh
RUN chmod +x openvpn.sh
RUN ./openvpn.sh
