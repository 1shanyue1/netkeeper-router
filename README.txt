����1~8������ɺ��ʵ�ֿͻ�������·��������֤����������ʹ��wo��У԰����Ҳ����ֱ����·����ˢ��RT-N14U-GPIO-1-7620-128M_3.4.3.9-099(�������֤).trx����̼����Դ���֤������ͻ������Ӻ�ͬ��ֱ�����������ǲ���ʹ������Ķದ����
����9~12������ɺ��ʵ�ִ�����ӣ����ٵ���)�����廹�迴·����֧�ֵ�������ʺͽ������豸��


1����breed web �ָ�����̨
2��ˢ��PandoraBox-ralink-mt7620-mt7620a-evb-���ದ��Ӳ������-r1140-20150709.bin�̼�
3��ʹ��wincap�ϴ��ļ�����hebei_sxplugin.so�����/usr/lib/pppd/2.4.7/ Ŀ¼���ļ�Э��ѡ��scp��������192.168.1.1���˿�22���û�root������admin��
4�����ϴ��Ĳ��Ȩ��Ϊ0755���û����ж�/д/ִ��Ȩ�ޣ����û��������û����ж�/дȨ�ޣ�
5���޸�confnetwork.sh�ļ���ѹ�������޸ĺò������˺�������Ϣ
	uci set network.netkeeper.username=
	uci set network.netkeeper.password=
6���ϴ�confnetwork.sh�ű���/tmp/ Ŀ¼
7���趨������ִ��Ȩ�޲�ִ��
	chmod a+x /tmp/confnetwork.sh
	sh /tmp/confnetwork.sh������ֱ�ӹص�����Ӱ�죩
8������192.168.1.1·����������棬ͬ��ʱ�䣬���߲���wan�ڣ�һ�����Ӻ��ܲ������������Ե�������Ƿ���ã���ʾ��ͨ���ؽ���Ͱε���Դ��һ�������ٲ��ϣ�
9.�������������󣬽���·���������̨���ҵ�����wan�ӿڣ��м����˺žʹ��������ӿڣ�Ȼ�󱣴沢Ӧ�á�
10����winscp������/etc/configĿ¼����network�ļ�
11���ҵ��ļ���netkeeper��ɾ��������˺�����
	option username ''
	option password ''
12���ҵ��ļ���wan1,wan2....���������ݸ���

	config interface 'vwan1'
	option ifname 'macvlan1'
	option macaddr 'a4b3c2d1aadd'
	option proto 'pppoe'
	option pppd_options 'plugin hebei_sxplugin.so'
	option metric '41'
	option username '������ĵ�һ��@campus�˺�'
	option password '������˺�����'

	

	config interface 'vwan2'
	option ifname 'macvlan2'
	option macaddr 'b4a3a7c3c5a7'
	option proto 'pppoe'
	option pppd_options 'plugin hebei_sxplugin.so'
	option metric '42'
	option username '������ĵڶ���@campus�˺�'
	option password '������˺�����'

	config interface 'vwan3'
	option ifname 'macvlan3'
	option macaddr 'd3d4a5b7c1b4'
	option proto 'pppoe'
	option pppd_options 'plugin hebei_sxplugin.so'
	option metric '43'
	option username '������ĵ�����@campus�˺�'
	option password '������˺�����'

��ע��option macaddr 'b4a3a7c3c5a7'��Ϊ����wan�ڵ�MAC��ַ����Ҫдһ���ˣ�


��������ˣ�ȱ����ÿ����Ҫ���������ҵ�����ʱ�䣬��ʱ��ϵ���Ҫ����·���������̨�ֶ�ͬ��ʱ��


MD5     ��DD74EF1876A08E6959E7E49468DFBDE8
SHA1    ��D6F9615B4283FA9B478E0B82A1D031E39CE50272
CRC32   ��049344B0