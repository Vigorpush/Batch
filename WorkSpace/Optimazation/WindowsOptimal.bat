TITLE winodws XP �Ż������ļ� 
COLOR 0A
CLS
@echo off
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo ר��winodws XP �Ż������ļ�
echo.
echo �������ϵͳ�����ļ������Ե�......
echo. 
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
sfc /purgecache
sfc /purgecache
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\*.log
del /f /s /q %windir%\*.tmp
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
rd /s /q %temp% & md %temp%
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo ���ϵͳ������ɣ�
echo.
echo �����Զ���WinXP�ķ�������Ż�...
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
@rem Alerter 
@rem ΢���� ֪ͨѡȡ��ʹ���߼������ϵͳ������ʾ�����ֹͣ�������ʹ��ϵͳ����@rem ��ʾ�ĳ��򽫲����յ�֪ͨ��
@rem ���䣺 һ����ü������������Ҫ���ͻ���ռ����ϵͳ�������ľ�ʾ(Administrative Alerts)��������ļ�������ھ��������� 
@rem ���棺 Workstation 
@rem ���飺 ��ͣ�� 
sc config Alerter start= DISABLED 
echo.
@rem Application Layer Gateway Service 
@rem ΢���� �ṩ������������������������������ǽ�ĵ�����ͨѶЭ������֧�� 
@rem ���䣺 ����㲻ʹ���������������� (ICS) �ṩ��̨���������������ȡ����������������ǽ (ICF) ��������Թص� 
@rem ���棺 Internt Connection Firewall (ICF) / Internet Connection Sharing (ICS) 
@rem ���飺 ��ͣ�� 
sc config ALG start= DISABLED 
echo.
@rem Application Management (Ӧ�ó������) 
@rem ΢���� �ṩָ�ɡ����С��Լ��Ƴ���������װ���� 
@rem ���䣺 ����˵��������װ����ķ��� 
@rem ���飺 �ֶ� 
sc config AppMgmt start= DEMAND 
echo.
@rem Windows Audio 
@rem ΢���� �������� Windows Ϊ���������Ѷװ�á�����������ֹͣ����Ѷװ�ú�Ч�����޷�����?#092;��������������ͣ�ã���@rem ����ȷ���������ķ����޷������� 
@rem ���䣺 �����û���������Թ����� 
@rem ���棺 Plug and Play��remote Procedure Call (RPC) 
@rem ���飺 �Զ� 
sc config AudioSrv start= AUTO 
echo.
@rem Background Intelligent Transfer Service 
@rem ΢���� ʹ�����õ�����Ƶ�����������ݡ� 
@rem ���䣺 ���� Via HTTP1.1 �ڱ����������ϵ�?#124;�������� Windows Update �����Դ�Ϊ����֮һ 
@rem ���棺remote Procedure Call (RPC) �� Workstation 
@rem ���飺 ��ͣ�� 
sc config BITS start= DISABLED
echo.
@rem Computer Browser (����������) 
@rem ΢���� ά�������ϸ��µļ�����嵥����������嵥�ṩ����Ϊ������ļ���������ֹͣ�����������嵥�����ᱻ���»�ά����@rem ���ͣ����������������������ķ����޷������� 
@rem ���䣺 һ���ͥ�ü��������Ҫ��������ļ����Ӧ��������֮�ϣ������ڴ��͵��������б�Ҫ����������ٶ��� 
@rem ���棺 Server �� Workstation 
@rem ���飺 ��ͣ�� 
sc config Browser start= DISABLED
echo.
@rem Indexing Service (��������) 
@rem ΢���� ������Զ�̼�������������ݺ͵�������; ͸�����ԵĲ�ѯ�����ṩ���ٵ�����ȡ�� 
@rem ���䣺 �򵥵�˵��������ӿ��Ѳ��ٶȣ���������Ӧ�ú����˺�Զ�̼��������Ѱ�� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config CiSvc start= DISABLED 
echo.
@rem ClipBook (������) 
@rem ΢���� ���ü������������Դ�����Ϣ����Զ�̼��������������������ֹͣ�����������������޷���Զ�̼����������Ϣ�������@rem ������ͣ�ã��κ���ȷ���������ķ����޷������� 
@rem ���䣺 �Ѽ������ڵ���Ϣ������̨�����������һ����ü���������ò��� 
@rem ���棺 Network DDE 
@rem ���飺 ��ͣ�� 
sc config ClipSrv start= DISABLED 
echo.
@rem COM+ System Application 
@rem ΢���� ���� COM+ ������趨��׷�١����ֹͣ�˷��񣬴󲿷ֵ� COM+ ������޷��ʵ�?#092;��������˷���ͣ�ã��κ���ȷ����@rem ���ķ����޷������� 
@rem ���䣺 ��� COM+ Event System ��һ̨������ô COM+ System Application ����˾�������¼�����������ʾ�� DCOM û������ 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 �ֶ� 
sc config COMSysApp start= DEMAND 
echo.
@rem Cryptographic Services 
@rem ΢���� �ṩ������������: ȷ�� Windows ����ǩ�µ� [���Ŀ¼���ݿ����]; �����������������Ƴ������θ�ƾ֤��Ȩƾ֤�� [��@rem �����ĸ�Ŀ¼����]; �Լ�Э��ע������������ȡ��ƾ֤�� [��Կ����]������������ֹͣ����Щ���������޷���ȷ������
@rem ���䣺 �򵥵�˵���� Windows Hardware Quality Lab (WHQL)΢����һ����֤���������ʹ�� Automatic Updates �����������Ҫ��� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 �ֶ� 
sc config CryptSvc start= DEMAND 
echo.
@rem DCOM Server Process Launcher
@rem Ϊ DCOM �����ṩ�������ܡ�
sc config DcomLaunch start= AUTO 
echo.
@rem DHCP Client (DHCP �ͻ���) 
@rem ΢���� ͸����¼������ IP ��ַ�� DNS ���������������趨�� 
@rem ���䣺 ʹ�� DSL/Cable ��ICS �� IPSEC ���˶���Ҫ�����ָ����̬ IP 
@rem ���棺 AFD ����֧�ֻ�����NetBT��SYMTDI��TCP/IP Protocol Driver �� NetBios over TCP/IP 
@rem ���飺 �ֶ�
sc config Dhcp start= AUTO 
echo.
@rem Logical Disk Manager Administrative Service (�߼����̹���Աϵͳ��������) 
@rem ΢���� �趨Ӳ�̴��̼�������������ִֻ���趨����Ȼ���ֹͣ�� 
@rem ���䣺 ʹ�� Microsoft Management Console(MMC)����̨�Ĺ���ʱ���õ� 
@rem ���棺 Plug and Play��remote Procedure Call (RPC)��Logical Disk Manager 
@rem ���飺 �ֶ� 
sc config dmadmin start= DEMAND 
echo.
@rem Logical Disk Manager (�߼����̹���Ա) 
@rem ΢���� ��⼰������Ӳ�̴��̣��Լ����ʹ�������Ϣ���߼����̹���ϵͳ���������Թ��趨������������ֹͣ����̬����״̬����@rem ����Ϣ���ܻ��ʱ������������ͣ�ã��κ���ȷ���������ķ����޷������� 
@rem ���䣺 ���̹���Ա������̬�������̣�����ʾ���̿��ÿռ�Ⱥ�ʹ�� Microsoft Management Console(MMC)����̨�Ĺ��� 
@rem ���棺 Plug and Play��remote Procedure Call (RPC)��Logical Disk Manager Administrative Service 
@rem ���飺 �Զ� 
sc config dmserver start= AUTO 
echo.
@rem DNS Client (DNS �ͻ���) 
@rem ΢���� ��������ȡ��̨���������������ϵͳ (DNS) ���ơ����ֹͣ���������̨��������޷����� DNS ���Ʋ�Ѱ�� Active @rem Directory �������վ��λ�á����ͣ����������������������ķ����޷������� 
@rem ���䣺 ������˵�ģ����� IPSEC ��Ҫ�õ� 
@rem ���棺 TCP/IP Protocol Driver 
@rem ���飺 �ֶ� 
sc config Dnscache start= AUTO 
echo.
@rem Error Reporting Service 
@rem ΢���� ������ִ���ڷǱ�׼�����еķ����Ӧ�ó���Ĵ��󱨸档 
@rem ���䣺 ΢����Ӧ�ó�����󱨸� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config ERSvc start= DISABLED 
echo.
@rem Event Log (�¼���¼�ļ�) 
@rem ΢���� ���� Windows Ϊ���ĳ����������������¼�ѶϢ�������¼��������м��ӡ���������ܱ�ֹͣ�� 
@rem ���䣺 �����¼�ѶϢ��ʾ���¼�������֮�� 
@rem ���棺 Windows Management Instrumentation 
@rem ���飺 �Զ� 
sc config Eventlog start= AUTO 
echo.
@rem COM+ Event System (COM+ �¼�ϵͳ) 
@rem ΢���� ֧�֡�ϵͳ�¼�֪ͨ���� (SENS)�����������¼��Զ���ɢ�����ĵ� COM ������������ֹͣ��SENS ��رգ����޷��ṩ����@rem ��ע��֪ͨ�� 
@rem ���䣺 ��Щ��������õ� COM+ ������� BootVis �� optimize system Ӧ�ã����¼�����������ʾ�� DCOM û������ 
@rem ���棺remote Procedure Call (RPC) �� System Event Notification 
@rem ���飺 �ֶ� 
sc config EventSystem start= DEMAND 
echo.
@rem Help and Support 
@rem ΢���� ��˵����֧�������ܹ�����̨�������ִ�С�����������ֹͣ�����޷�ʹ��˵����֧�����ġ�
@rem ���䣺 �����ʹ�þ͹��˰� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config helpsvc start= DISABLED 
echo.
@rem Human Interface Device Access 
@rem ΢���� ���ö����Ի��ӿ�װ�� (HID) ��ͨ�������ȡ��HID װ��������ά����������̡�Զ�̿��ơ��Լ�������ý��װ�������ȶ����@rem ���Ŧ��ʹ�á�����������ֹͣ�����������ƵĿ��Ŧ�����������á�
@rem ���䣺 �������ᵽ�� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config HidServ start= DISABLED 
echo.
@rem http sll
@rem �˷���ͨ����ȫ�׽��ֲ�(SSL)ʵ�� HTTP ����İ�ȫ���ı�����Э��(HTTPS)������˷��񱻽��ã��κ��������ķ����޷�������
sc config HTTPFilter start= DEMAND 
echo.
@rem IMAPI CD-Burning COM Service 
@rem ΢���� ʹ�� Image Mastering Applications Programming Interface (IMAPI) ����������¼�ơ�����������ֹͣ������������@rem �޷�¼�ƹ��̡�����������ͣ�ã��κ���ȷ���������ķ����޷������� 
@rem ���䣺 XP ���ϵ� CD-R �� CD-RW �������Ϸŵ���¼���ܣ���ϧ�Ȳ�����¼�������ص������Լӿ� Nero �Ŀ����ٶ� 
@rem ���飺 ��ͣ�� 
sc config ImapiService start= DISABLED
echo.
@rem Server (������) 
@rem ΢���� ͸������Ϊ��̨������ṩ��������ӡ���������ܵ��Ĺ��������ֹͣ������񣬽��޷�ʹ����Щ���ܡ����ͣ�����������@rem �����������ķ����޷������� 
@rem ���䣺 �򵥵�˵���ǵ����ʹ�ӡ�ķ������������к������������������Ȼ�͹��� 
@rem ���棺 Computer Browser 
@rem ���飺 ��ͣ�� 
sc config lanmanserver start= DISABLED
echo.
@rem Workstation (����վ) 
@rem ΢���� ������ά����Զ�̷������Ŀͻ����������������ֹͣ���������Щ�������޷�ʹ�á����ͣ����������������������ķ�@rem ���޷������� 
@rem ���䣺 ����������������Ҫ��һЩ���� 
@rem ���棺 Alerter��Background Intelligent Transfer Service��Computer Browser��Messenger��Net Logon��remote Procedure Call @rem (RPC) Locator 
@rem ���飺 �Զ�
sc config lanmanworkstation start= AUTO 
echo.
@rem TCP/IP NetBIOS Helper (TCP/IP NetBIOS Э������) 
@rem ΢���� ���� [NetBIOS over TCP/IP (NetBT)] ���� NetBIOS ���ƽ�����֧�֡� 
@rem ���䣺 ���������粻ʹ�� NetBios ���� WINS �����ɹر� 
@rem ���棺 AFD ����֧�ֻ�����NetBt 
@rem ���飺 ��ͣ�� 
sc config LmHosts start= DISABLED 
echo.
@rem Messenger (�Ų�) 
@rem ΢���� �ڿͻ��˼�������֮�䴫�����紫�ͼ� [Alerter] ����ѶϢ����������� Windows Messenger �޹ء����ֹͣ�������@rem @rem Alerter ѶϢ�����ᱻ���䡣���ͣ����������������������ķ����޷������� 
@rem ���䣺 ��������֮�以�ഫ����ʾѶϢ�Ĺ��ܣ��� net send ���ܣ��粻�뱻ɧ�Ż��ɹ��� 
@rem ���棺 NetBIOS Interface��Plug and Play��remote Procedure Call (RPC)��Workstation 
@rem ���飺 ��ͣ�� 
sc config Messenger start= DISABLED 
echo.
@rem NetMeetingremote Desktop Sharing (NetMeeting Զ�����湲��) 
@rem ΢���� �þ�����Ȩ��ʹ���߿���ʹ�� NetMeeting ͸����˾�����ڲ����磬��Զ�̷����ⲿ�����������������ֹͣ�Ļ���Զ������@rem �������ܽ��޷�ʹ�á��������ͣ�õĻ����κ��������ķ����޷������� 
@rem ���䣺 ����˵�ģ���ʹ���߿��Խ�������Ŀ���Ȩ�����������ϻ��������ϵ�����ʹ���ߣ���������Ӱ�ȫ�Բ���࿪���ţ��͹��˰� 
@rem ���飺 ��ͣ�� 
sc config mnmsrvc start= DISABLED 
echo.
@rem Distributed Transaction Coordinator (�ֲ�ʽ����Э����) 
@rem ΢���� Э����Խ�����Դ����Ա�Ľ��ף��������ݿ⡢ѶϢ���м�����ϵͳ������˷���ֹͣ����Щ���׽����ᷢ�����������ͣ@rem �� ���κ������������ķ����޷������� 
@rem ���䣺 ������˵�ģ�һ���ͥ�ü�����ò�̫�������������õ� Message Queuing 
@rem ���棺remote Procedure Call (RPC) �� Security Accounts Manager 
@rem ���飺 ��ͣ�� 
sc config MSDTC start= DISABLED 
echo.
@rem Windows Installer (Windows ��װ����) 
@rem ΢���� ���ݰ����� .MSI �����ڵ�ָʾ����װ���޸��Լ��Ƴ������� 
@rem ���䣺 ��һ��ϵͳ����Э��ʹ������ȷ�ذ�װ���趨��׷�١��������Ƴ��������򣬿ɹ���Ӧ�ó������Ͱ�װ�ı�׼��ʽ������׷@rem �����絵��Ⱥ�顢��¼��Ŀ����ݷ�ʽ����� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 �ֶ� 
sc config MSIServer start= DEMAND 
echo.
@rem Network DDE (���� DDE) 
@rem ΢���� Ϊ��̬���ݽ��� (DDE) ������ͬ��ͬ�������ִ�еĳ����ṩ���紫��Ͱ�ȫ�ԡ�����������ֹͣ��DDE ����Ͱ�ȫ�Խ�@rem �޷�ʹ�á�����������ͣ�ã��κ���ȷ���������ķ����޷������� 
@rem ���䣺 һ���˺����ò��� 
@rem ���棺 Network DDE DSDM��ClipBook 
@rem ���飺 ��ͣ��
sc config NetDDE start= DISABLED 
echo. 
@rem Network DDE DSDM (���� DDE DSDM) 
@rem ΢���� ѶϢ��̬���ݽ��� (DDE) ���繲��������������ֹͣ��DDE ���繲�����޷�ʹ�á�
@rem ���䣺 һ���˺����ò��� 
@rem ���棺 Network DDE 
@rem ���飺 ��ͣ��
sc config NetDDEdsdm start= DISABLED 
echo.
@rem Net Logon 
@rem ΢���� ֧�������ϼ�������˻������¼��� pass-through ��֤�� 
@rem ���䣺 һ����ü������̫����ȥ�õ������������������� 
@rem ���棺 Workstation 
@rem ���飺 ��ͣ�� 
sc config Netlogon start= DISABLED 
echo.
@rem Network Connections (��������) 
@rem ΢���� ����������Ͳ����������ݼ��еĶ����������ڴ����ݼ��м��Ӿ��������Զ�������� 
@rem ���䣺 ��������������� 
@rem ���棺remote Procedure Call (RPC)��Internet Connection Firewall (ICF) / Internet Connection Sharing (ICS) 
@rem ���飺 �ֶ�
sc config Netman start= DEMAND 
echo.
@rem Network Location Awareness (NLA) 
@rem ΢���� �ռ�����������趨��λ����Ϣ�������������Ϣ���ʱ֪ͨӦ�ó��� 
@rem ���䣺 �����ʹ�� ICF �� ICS ���Թ����� 
@rem ���棺 AFD����֧�ֻ�����TCP/IP Procotol Driver��Internet Connection Firewall (ICF) / Internet Connection Sharing (ICS) 
@rem ���飺 ��ͣ�� 
sc config Nla start= DISABLED 
echo.
@rem NT LM Security Support Provider (NTLM ��ȫ��֧���ṩ��) 
@rem ΢���� Ϊû��ʹ�������ܵ������Զ�̹��̵��� (RPC) �����ṩ��ȫ�ԡ� 
@rem ���䣺 �����ʹ�� Message Queuing ���� Telnet Server �Ǿ͹����� 
@rem ���棺 Telnet 
@rem ���飺 ��ͣ�� 
sc config NtLmSsp start= DISABLED 
echo.
@rem @rem ovable Storage (ж��ʽ���װ��) 
@rem ΢���� None 
@rem ���䣺 �������� Zip �������������� USB ֮���Яʽ��Ӳ������ Tape ����װ�ã���Ȼ���Գ��Թ��� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 DISABLED 
sc config NtmsSvc start= DEMAND 
echo.
@rem Office Source Engine (office 2003)
@rem �ɱ������ڸ��º��޸��İ�װ�ļ������������ذ�װ������º� Watson ���󱨸�ʱ����ʹ�á�
@rem sc config ose start= DEMAND 
echo.
@rem Plug and Play (�������) 
@rem ΢���� ���ü������ʹ����û�л���ٵ�������ʶ����ӦӲ�������ֹͣ��ͣ��������񽫵���ϵͳ���ȶ��� 
@rem ���䣺 ����˼����� PNP ���� 
@rem ���棺 Logical Disk Manager��Logical Disk Manager Administrative Service��Messenger��Smart Card��Telephony��Windows Audio 
@rem ���飺 �Զ�
sc config PlugPlay start= AUTO 
echo.
@rem IPSEC Services (IP ��ȫ�Է���) 
@rem ΢���� ���� IP ��ȫ��ԭ������ ISAKMP/Oakley (IKE) �� IP ��ȫ���������� 
@rem ���䣺 Э�������������紫�͵����ݡ�IPSec Ϊһ��Ҫ���ڣ�Ϊ����˽������ (VPN) ���ṩ��ȫ�ԣ��� VPN ������֯������������ȫ@rem �ش������ݡ���ĳЩ������Ҳ����Ҫ������һ��ʹ���ߴ󲿷��ǲ�̫��Ҫ�� 
@rem ���棺 IPSEC driver��remote Procedure Call (RPC)��TCP/IP Protocol Driver 
@rem ���飺 �ֶ� 
sc config PolicyAgent start= DEMAND 
echo.
@rem Protected Storage (�ܱ����Ĵ��װ��) 
@rem ΢���� �ṩ�ܱ����Ĵ������������˽�ܽ�Կ�����������ݣ���ֹδ��Ȩ�ķ��񡢴�������ʹ���߽��д�ȡ�� 
@rem ���䣺 ��������������������ķ����� Outlook�����ų�������Ӧ�ó������Ӽܹ��ȵ� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 �Զ� 
sc config ProtectedStorage start= AUTO 
echo.
@rem remote Access Auto Connection Manager (Զ�̷����Զ���������Ա) 
@rem ΢���� ��������յ�Զ�� DNS �� NetBIOS ���ƻ��ַʱ������Զ������������� 
@rem ���䣺 ��Щ DSL/Cable �ṩ�ߣ�������Ҫ�ô�������������� 
@rem ���棺remote Access Connection Manager��Telephony 
@rem ���飺 �ֶ� 
sc config RasAuto start= DEMAND 
echo.
@rem remote Access Connection Manager (Զ�̷�����������Ա) 
@rem ΢���� �������������� 
@rem ���䣺 ���������� 
@rem ���棺 Telephony��Internet Connection Firewall (ICF) / Internet Connection Sharing (ICS)��remote Access Auto @rem Connection Manager 
@rem ���飺 �ֶ� 
sc config RasMan start= DEMAND 
echo.
@rem remote Desktop Help Session Manager 
@rem ΢���� ����������Զ��Э��������˷���ֹͣ�Ļ���Զ��Э�����޷�ʹ�á�ֹͣ�˷���֮ǰ�����Ȳ������ݶԻ����е� [������]��ǩ�� 
@rem ���䣺 ����˵�Ĺ����Ϳ���Զ��Э���������ʹ�ÿ��Թ��� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 DISABLED
sc config RDSessMgr start= DISABLED 
echo.
@rem Routing andremote Access (·�ɺ�Զ�̷���) 
@rem ΢���� �ṩ�����������缰��������Ĺ�˾��·�ɷ��� 
@rem ���䣺 ����˵�ģ��ṩ������������������ VPN ����һ���û��ò��� 
@rem ���棺remote Procedure Call (RPC)��NetBIOSGroup 
@rem ���飺 ��ͣ��
sc config remoteAccess start= DISABLED 
echo.
@rem remote Registry (Զ�̵�¼����) 
@rem ΢���� ����Զ��ʹ�����޸����������ϵĵ�¼�趨������������ֹͣ����¼ֻ�������������ϵ�ʹ�����޸ġ�����������@rem ͣ�ã��κ���ȷ���������ķ����޷������� 
@rem ���䣺 ���ڰ�ȫ�Ե����ɣ����û���ر�����󣬽�����ù���������������ҪԶ��Э���޸���ĵ�¼�趨 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config remoteRegistry start= DISABLED 
echo.
@rem remote Procedure Call (RPC) Locator (Զ�̹��̵��ö�λ����) 
@rem ΢���� ���� RPC ���Ʒ������ݿ⡣ 
@rem ���䣺 ����˵�ģ�һ�������Ϻ����õ������Գ��Թ��� 
@rem ���棺 Workstation 
@rem ���飺 DISABLED 
sc config RpcLocator start= DISABLED 
echo.
@rem remote Procedure Call (RPC) (Զ�̹��̵��ã�RPC) 
@rem ΢���� �ṩ�������Ӧ�����Լ����� RPC ���� 
@rem ���䣺 һЩװ�ö�����������ȥ���� 
@rem ���棺 ̫���ˣ��Լ�ȥ���� 
@rem ���飺 �Զ� 
sc config RpcSs start= AUTO 
echo.
@rem Security Accounts Manager (��ȫ���˻�����Ա) 
@rem ΢���� ���汾���˻��İ�ȫ����Ϣ�� 
@rem ���䣺 �����˺ź�Ⱥ��ԭ��(gpedit.msc)Ӧ�� 
@rem ���棺remote Procedure Call (RPC)��Distributed Transaction Coordinator 
@rem ���飺 �Զ� 
sc config SamSs start= AUTO 
echo.
@rem Smart Card (�ǻۿ�) 
@rem ΢���� ����������������ȡ���ܿ��Ĵ�ȡ������������ֹͣ�������������޷���ȡ���ܿ�������������ͣ�ã��κ���ȷ��@rem �������ķ����޷������� 
@rem ���䣺 ����㲻ʹ�� Smart Card ���ǾͿ��Թ��� 
@rem ���棺 Plug and Play 
@rem ���飺 ��ͣ�� 
sc config SCardSvr start= DISABLED 
echo.
@rem Task Scheduler (�����ų���) 
@rem ΢���� ��ʹ�����ܹ��������������趨���Ŷ��Զ��Ĺ��������ֹͣ���������Щ�����������Ŷ���ʱ��ʱ������ִ�С�
@rem ���䣺 �趨�Ŷ��Զ��Ĺ�������һЩ��ʱ����ɨ�顢������ʱɨ�顢���µȵ� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 �Զ�
sc config Schedule start= AUTO 
echo.
@rem Secondary Logon 
@rem ΢���� ������������֤�µ���ʼ��������������ֹͣ������ĵ����ȡ���޷�ʹ�á�
@rem ���䣺 �������ʹ���ߴ�������ִ�з����� 
@rem ���飺 �Զ� 
sc config seclogon start= AUTO 
echo.
@rem System Event Notification (ϵͳ�¼�֪ͨ) 
@rem ΢���� ׷������ Windows ���롢���硢�͵�Դ�¼���ϵͳ�¼���֪ͨ��Щ�¼��� COM+ �¼�ϵͳ�����ߡ� 
@rem ���䣺 ������˵�� 
@rem ���棺 COM+ Event System 
@rem ���飺 �Զ�
sc config SENS start= AUTO 
echo.
@rem Internet Connection Firewall (ICF) / Internet Connection Sharing (ICS) 
@rem ΢���� Ϊ���ļ��������С�Ͱ칫�������ṩ�����ַת�롢Ѱַ�����ƽ��������/���ֹ���ŵķ��� 
@rem ���䣺 ����㲻ʹ����������������(ICS)���� XP �ں�����������������ǽ(ICF)����Թص� 
@rem ���棺 Application Layer Gateway Service��Network Connections��Network Location Awareness(NLA)��remote Access Connection @rem Manager 
@rem ���飺 ��ͣ�� 
sc config SharedAccess start= DEMAND 
echo.
@rem Shell Hardware Detection 
@rem ΢���� Ϊ�Զ�����Ӳ���¼��ṩ֪ͨ�� 
@rem ���䣺 һ��ʹ���ڼ��俨����CDװ�á�DVDװ���� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 �Զ� 
sc config ShellHWDetection start= AUTO 
echo.
@rem Print Spooler (��ӡ�����񻺳崦����) 
@rem ΢���� �����������ڴ����Դ��Ժ��ӡ�� 
@rem ���䣺 ���û�д�ӡ�������Թ��� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config Spooler start= AUTO 
echo.
@rem Windows Image Acquisition (WIA) (WindowsӰ��ȡ�ó���) 
@rem ΢���� Ϊɨ���Ǻ���������ṩӰ��ߢȡ���� 
@rem ���䣺 ���ɨ���Ǻ���������ڲ�����֧��WIA���ܵĻ����ǾͿ���ֱ�ӿ���ͼ��������Ҫ������������������û��ɨ���Ǻ��������@rem ��ʹ���ߴ�ɹ��� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config stisvc start= DEMAND 
echo.
@rem MS Software Shadow Copy Provider 
@rem ΢���� ������������Ӱ���Ʒ�����ȡ�õ�������Ϊ���Ĵ�������Ӱ���ơ����ֹͣ������񣬾��޷�����������Ϊ���Ĵ�������Ӱ���ơ� 
@rem ���䣺 ������˵�ģ��������ݵĶ������� MS Backup �������Ҫ������� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config swprv start= DISABLED 
echo.
@rem Performance Logs and Alerts (Ч�ܼ�¼�ļ�����ʾ) 
@rem ΢���� ���������趨���ų̲������ӱ�����Զ�̼�����ռ�Ч�����ݣ�Ȼ������д���¼��?#124;����Ѷ������������ֹͣ����@rem �����ռ�Ч����Ϣ������������ͣ�ã��κ���ȷ���������ķ����޷������� 
@rem ���䣺 ûʲô��ֵ�ķ��� 
@rem ���飺 ��ͣ�� 
sc config SysmonLog start= DISABLED 
echo.
@rem Telephony (�绰����) 
@rem ΢���� Ϊ����������ϼ����ɾ����������ӵ�����ִ�д˷���ķ������ϣ����Ƶ绰����װ�ú� IP Ϊ�����������ĳ����ṩ�绰��@rem �� API (TAPI) ֧�֡� 
@rem ���䣺 һ��Ĳ��ŵ��ƽ��������һЩ DSL/Cable �����õ� 
@rem ���棺 Plug and Play��remote Procedure Call (RPC)��remote Access Connection Manager��remote Access Auto Connection @rem Manager 
@rem ���飺 �ֶ� 
sc config TapiSrv start= DEMAND 
echo.
@rem Terminal Services (�ն˻�����) 
@rem ΢���� ������λʹ���߻������ӵ�ͬһ����������������ʾ������Զ�̼������Ӧ�ó���Զ������ļ�ǿ (����ϵͳ����Ա�� RD)@rem �������л�ʹ���ߡ�Զ��Э�����ն˻��������� 
@rem ���䣺 Զ���������Զ��Э���Ĺ��ܣ�����Ҫ�͹��� 
@rem ���棺remote Procedure Call (RPC)��Fast User Switching Compatibility��InteractiveLogon 
@rem ���飺 ��ͣ��
sc config TermService start= DISABLED 
echo.
@rem Themes 
@rem ΢���� �ṩʹ���߾������������ 
@rem ���䣺 �ܶ���ʹ�ò������⣬�������û��ʹ�õ��ˣ��ǾͿ��Թر� 
@rem ���飺 �Զ� 
sc config Themes start= AUTO 
echo.
@rem Distributed Link Tracking Client (�ֲ�ʽ����׷�ٿͻ���) 
@rem ΢���� ά��������л���������ͬ������� NTFS ����������ᡣ 
@rem ���䣺 ά�������ڲ�ͬ�����֮��ĵ������� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ��
sc config TrkWks start= DISABLED 
echo.
@rem Windows User Mode Driver Framework
@rem ���� Windows �û�ģʽ��������
sc config UMWdf start= DEMAND 
echo.
@rem Uninterruptible Power Supply (���ϵ繩��ϵͳ) 
@rem ΢���� �������ӵ���̨������Ĳ��ϵ��Դ��Ӧ (UPS)�� 
@rem ���䣺 ���ϵ��Դ��Ӧ (UPS)һ�������õ��𣿳�����ĵ�Դ��Ӧ���о߱��˹��ܣ���Ȼ�͹��� 
@rem ���飺 ��ͣ�� 
sc config UPS start= DISABLED 
echo.
@rem Volume Shadow Copy 
@rem ΢���� ������ִ�����ڱ��ݺ�����Ŀ�ĵĴ�������Ӱ���ơ�����������ֹͣ����Ӱ���ƽ��޷����ڱ��ݣ����ݿ��ܻ�ʧ�ܡ�
@rem ���䣺 ������˵�ģ��������ݵ�?#124;������ MS Backup �������Ҫ������� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ��
sc config VSS start= DISABLED 
echo.
@rem Windows Time (Windows ʱ���趨) 
@rem ΢���� ά�������������пͻ��˼������������ݼ�ʱ��ͬ������������������ֹͣ�����޷��������ڼ�ʱ��ͬ������������������@rem ��ͣ�ã���������ķ��񶼻�ֹͣ�� 
@rem ���䣺 �����ʱУ׼�õģ�û��Ҫ�͹��� 
@rem ���飺 ��ͣ�� 
sc config W32Time start= DISABLED 
echo.
@rem WebClient 
@rem ΢���� ���� Windows Ϊ���ĳ�������������ȡ���Լ��޸�������Ϊ���ĵ��������ֹͣ���������Щ���ܽ��޷�ʹ
@rem ���䣺 ʹ�� WebDAV �����������ݼ����ص����е� Web ���񣬻��ڰ�ȫ�Ե����ɣ�����Գ��Թر� 
@rem ���棺 WebDav Client Redirector 
@rem ���飺 ��ͣ��
sc config WebClient start= DISABLED 
echo.
@rem Windows Management Instrumentation (WMI) 
@rem ΢���� �ṩ���ýӿڼ�����ģ�ͣ��Դ�ȡ�йز���ϵͳ��װ�á�Ӧ�ó��򼰷���Ĺ�����Ϣ��������������ֹͣ��������� Windows @rem �������޷�����������������������ͣ�ã��������������ķ��񶼽��޷������� 
@rem ���䣺 ����˵�ģ���һ���ṩһ����׼�Ļ����ṹ�����Ӻ͹���ϵͳ��Դ�ķ����ɲ����㶯�� 
@rem ���棺 Event Log��remote Procedure Call (RPC) 
@rem ���飺 �Զ�
sc config winmgmt start= AUTO 
echo.
@rem Portable Media Serial Number 
@rem ΢���� Retrieves the serial number of any portable music player connected to your computer 
@rem ���䣺 ͸���������������ȡ���κ����ֲ�����ţ�ûʲô��ֵ�ķ��� 
@rem ���飺 ��ͣ�� 
sc config WmdmPmSN start= DISABLED 
echo.
@rem Windows Management Instrumentation Driver Extensions (Windows Management Instrumentation ������������) 
@rem ΢���� �ṩϵͳ������Ϣ����/ȡ���������� 
@rem ���䣺 Windows Management Instrumentation �����죬�ṩ��Ϣ�õ� 
@rem ���飺 �ֶ� 
sc config Wmi start= DEMAND 
echo.
@rem WMI Performance Adapter 
@rem ΢���� �ṩ���� WMIHiPerf �ṩ�ߵ�Ч�����ӿ���Ϣ�� 
@rem ���䣺 �������� 
@rem ���棺remote Procedure Call (RPC) 
@rem ���飺 ��ͣ��
sc config WmiApSrv start= DISABLED 
echo.
@rem Automatic Updates 
@rem ΢���� ������Ҫ Windows ���µ����ؼ���װ�����ͣ�ô˷��񣬿����ֶ��Ĵ� Windows Update ��վ�ϸ��²���ϵͳ�� 
@rem ���䣺 ���� Windows �ڱ����Զ�����֮�£��� Microsoft Servers �Զ��������ظ�@rem ���޲����� 
@rem ���飺 ��ͣ�� 
sc config wuauserv start= DISABLED 
echo.
@rem Wireless Zero Configuration 
@rem ΢���� Ϊ 802.11 ���俨�ṩ�Զ��趨 
@rem ���䣺 �Զ�������������װ�ã�����֮�����˵������������ʹ�������������俨װ�ã���ô����б�Ҫʹ������������������ 
@rem ���棺 NDIS Usermode I/O Protocol��remote Procedure Call (RPC) 
@rem ���飺 ��ͣ�� 
sc config WZCSVC start= DISABLED 
echo.
@rem Network Provisioning Service
@rem ������Ϊ�Զ������ṩ���� XML �����ļ���
sc config xmlprov start= DEMAND 
echo.
@rem DCOM Server Process Launcher
@rem Ϊ DCOM �����ṩ���ع��ܡ�
sc config DcomLaunch start= AUTO 
echo.
@rem Fast User Switching Compatibility
@rem Ϊ�ڶ��û�����ҪЭ����Ӧ�ó����ṩ����������RPC��
sc config FastUserSwitchingCompatibility start= DEMAND 
echo.
@REM System Restore Service
@REM ִ��ϵͳ��ԭ���ܡ� Ҫֹͣ������ӡ��ҵĵ��ԡ��������е�ϵͳ��ԭѡ��ر�ϵͳ��ԭ��
sc config srservice start= DISABLED 
echo.
@REM SSDP Discovery Service
@REM ��������ͥ�����ϵ� UPnP �豸�ķ��֡�
sc config SSDPSRV start= DISABLED 
echo.
@rem telnet
@REM ����Զ���û���¼���˼���������г��򣬲�֧�ֶ��� TCP/IP Telnet �ͻ����������� UNIX �� Windows �ļ����������˷���ֹͣ��Զ���û��Ͳ��ܷ��ʳ����κ�ֱ���������ķ��񽫻�����ʧ�ܡ�
sc config TlntSvr start= DISABLED 
echo.
@REM Universal Plug and Play Device Host
@REM Ϊ����ͨ�ü��弴���豸�ṩ֧�֡�
sc config upnphost start= DEMAND 
echo.
@REM Security Center
@REM ����ϵͳ��ȫ���ú����á�
sc config wscsvc start= DISABLED 
echo.
sfc /purgecache
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo WinXP �ķ�������Ż���ɣ�
echo.
echo ���ڶ� IE ����޸���ע�ᣬ�Ż�
echo.
echo ��ȴ�������......
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
regsvr32 /s actxprxy.dll
echo ��ɰٷ�֮ 10
regsvr32 /s shdocvw.dll
echo ��ɰٷ�֮ 15
regsvr32 /s oleaut32.dll
echo ��ɰٷ�֮ 20
Regsvr32 /s URLMON.DLL
echo ��ɰٷ�֮ 25
Regsvr32 /s mshtml.dll
echo ��ɰٷ�֮ 30
Regsvr32 /s msjava.dll
echo ��ɰٷ�֮ 35
Regsvr32 /s browseui.dll
echo ��ɰٷ�֮ 40
Regsvr32 /s softpub.dll
echo ��ɰٷ�֮ 45
Regsvr32 /s wintrust.dll
echo ��ɰٷ�֮ 50 (�Ż�,��ȴ�)
Regsvr32 /s initpki.dll
echo ��ɰٷ�֮ 55
Regsvr32 /s dssenh.dll
echo ��ɰٷ�֮ 60
Regsvr32 /s rsaenh.dl
echo ��ɰٷ�֮ 65
Regsvr32 /s gpkcsp.dll
echo ��ɰٷ�֮ 70
Regsvr32 /s sccbase.dll
echo ��ɰٷ�֮ 75
Regsvr32 /s slbcsp.dll
echo ��ɰٷ�֮ 85
Regsvr32 /s cryptdlg.dll
echo ��ɰٷ�֮ 90
sfc /purgecache
echo ��ɰٷ�֮ 100
cls
echo.
echo Press anykey to exist
echo.
echo. & pause 
exit
