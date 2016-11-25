步骤1~8设置完成后可实现客户端链接路由器免认证上网（不用使用wo的校园），也可以直接在路由器刷入RT-N14U-GPIO-1-7620-128M_3.4.3.9-099(带锐捷认证).trx这个固件，自带认证插件，客户端连接后同样直接上网，但是不能使用下面的多拨功能
步骤9~12设置完成后可实现带宽叠加（网速叠加)。具体还需看路由器支持的最大速率和交换机设备。


1，进breed web 恢复控制台
2，刷入PandoraBox-ralink-mt7620-mt7620a-evb-带多拨带硬件加速-r1140-20150709.bin固件
3，使用wincap上传文件夹中hebei_sxplugin.so插件到/usr/lib/pppd/2.4.7/ 目录（文件协议选择scp，主机名192.168.1.1，端口22，用户root，密码admin）
4，改上传的插件权限为0755（用户具有读/写/执行权限，组用户和其他用户具有读/写权限）
5，修改confnetwork.sh文件，压缩包已修改好并填入账号密码信息
	uci set network.netkeeper.username=
	uci set network.netkeeper.password=
6，上传confnetwork.sh脚本到/tmp/ 目录
7，设定所有人执行权限并执行
	chmod a+x /tmp/confnetwork.sh
	sh /tmp/confnetwork.sh（报错直接关掉，不影响）
8，进入192.168.1.1路由器管理界面，同步时间，网线插在wan口，一两分钟后看能不能上网（测试地区插件是否可用，显示联通下载界面就拔掉电源等一两分钟再插上）
9.可以正常上网后，进入路由器管理后台，找到虚拟wan接口，有几个账号就创建几个接口，然后保存并应用。
10，打开winscp，进入/etc/config目录。打开network文件
11，找到文件中netkeeper，删除里面的账号密码
	option username ''
	option password ''
12，找到文件中wan1,wan2....用下面内容覆盖

	config interface 'vwan1'
	option ifname 'macvlan1'
	option macaddr 'a4b3c2d1aadd'
	option proto 'pppoe'
	option pppd_options 'plugin hebei_sxplugin.so'
	option metric '41'
	option username '填入你的第一个@campus账号'
	option password '填入该账号密码'

	

	config interface 'vwan2'
	option ifname 'macvlan2'
	option macaddr 'b4a3a7c3c5a7'
	option proto 'pppoe'
	option pppd_options 'plugin hebei_sxplugin.so'
	option metric '42'
	option username '填入你的第二个@campus账号'
	option password '填入该账号密码'

	config interface 'vwan3'
	option ifname 'macvlan3'
	option macaddr 'd3d4a5b7c1b4'
	option proto 'pppoe'
	option pppd_options 'plugin hebei_sxplugin.so'
	option metric '43'
	option username '填入你的第三个@campus账号'
	option password '填入该账号密码'

（注意option macaddr 'b4a3a7c3c5a7'中为虚拟wan口的MAC地址，不要写一样了）


基本完成了，缺点是每次需要两分钟左右的启动时间，长时间断电需要进入路由器管理后台手动同步时间


MD5     ：DD74EF1876A08E6959E7E49468DFBDE8
SHA1    ：D6F9615B4283FA9B478E0B82A1D031E39CE50272
CRC32   ：049344B0