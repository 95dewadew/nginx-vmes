#!/bin/bash
wget https://www.dropbox.com/s/4wdhkvtp7oeoapm/badvpn-udpgw -o /dev/null
mv -f badvpn-udpgw /bin/badvpn-udpgw
chmod 777 /bin/badvpn-udpgw


     screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7000 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 1000 --max-connections-for-client 1000
	   screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 1000 --max-connections-for-client 1000
     
           echo -e "#!/bin/bash" >> /etc/rc.local
           echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7000 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
		       echo -e "screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 1000 --max-connections-for-client 1000" >> /etc/rc.local
	  echo -e "exit 0" >> /etc/rc.local
	  
chmod 755 /etc/rc.local
systemctl restart rc-local.service
systemctl start rc-local.service
