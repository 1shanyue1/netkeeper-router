uci delete network.wan
uci delete network.wan6
uci commit network
uci set network.netkeeper=interface
uci set network.netkeeper.ifname=eth0.2
uci set network.netkeeper.macaddr=aabbccddeeff
uci set network.netkeeper.proto=pppoe
uci set network.netkeeper.pppd_options='plugin hebei_sxplugin.so'
uci set network.netkeeper.username=
uci set network.netkeeper.password=
uci set network.netkeeper.metric='0'
uci commit network                                 
uci set firewall.@zone[1].network='wan netkeeper' 
uci commit firewall
/etc/init.d/firewall restart
/etc/init.d/network reload
/etc/init.d/network restart