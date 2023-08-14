#!/bin/bash
#### Description: simulates UCS IMM setup script for training and demo purposes
#### Written by: pl247 

clear
echo -e "
Cisco UCS 6400 Series Fabric Interconnect"
read -p "login: " login
read -s -p "Password: " pass
echo -e "\n UCS Intersight Management"
read -r -p "ucs-A# " comm

echo -e "\nAll UCS configurations will be erased and system will reboot."
read -r -p "Are you sure? Enter 'y' to continue: " comm

echo -e "
Removing all the configuration. Please wait\c"
sleep 1
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep .5
echo -e ".\c"

echo -e "
+ SYSDEBUG_DIR=/bootflash/sysdebug/
+ WORKSPACE_DIR=/workspace
++ /bin/ps -ef
++ /bin/grep pmon
++ /bin/grep -v /bin/grep
++ /bin/grep ism
++ /bin/awk '{print 2}'
+ PMON_PID=19232"
sleep 1
echo -e "+ /bin/cp /opt/ismconnector/connector/sw/etc/pmon.conn.stop.conf /opt/ismconnector/connector/sw/etc/pmon.conn.conf
+ /usr/bin/sudo kill -HUP 19232
+ /usr/bin/sudo kill -USR1 19232
+ /bin/sleep 2"
sleep 1
echo -e "+ /bin/cp /opt/ismconnector/connector/sw/etc/pmon.conn.start.conf /opt/ismconnector/connector/sw/etc/pmon.conn.conf
+ /usr/bin/sudo /bin/rm -rf /opt/db/flash /opt/db/nvram/dme.db /opt/db/sam.config
+ /usr/bin/sudo /bin/umount /opt/db/nvram
+ /usr/bin/sudo /bin/rm -rf /opt/backup-db.sh /opt/certstore /opt/check_ucsm.sh /opt/clear-db.sh /opt/copy-lib.sh /opt/copy-ucsm.sh /opt/create_ucsm_links.sh /opt/db /opt/extract_ucsm.sh /opt/first.pl /opt/id_rsa /opt/id_rsa.pub /opt/id_rsa.pub.peer /opt/init.sh /opt/ismconnector /opt/ismroot /opt/libcrypto.so /opt/libcrypto.so.1.0.0 /opt/libssl.so /opt/libssl.so.1.0.0 /opt/load-sam.sh /opt/mgmtext /opt/myfirst.sh /opt/network_setup.sh /opt/post-install.sh /opt/refresh-cookie.sh /opt/reserve-vlan-change.sh /opt/restore-db.sh /opt/sam_init_virt_plugin.sh /opt/shelltypemask.cfg.switch /opt/ssh_keys /opt/startup.log /opt/tmpmgmtextractdir /opt/ucsmbash /opt/ucsmbash.mount /opt/uninstall_ucsm.sh /opt/version.sh /opt/vsh.sh /opt/vsh.unshare.sh /opt/vsh_perm.switch"
sleep 1
echo -e "
+ /usr/bin/sudo /bin/rm -rf /mnt/pss/lcm_port_type.config /mnt/pss/pfm_breakout_port.config /mnt/pss/rsvd_vlan_start /opt/db/swcfg.db
+ /usr/bin/sudo /bin/rm -rf /bootflash/ismpkg-manager/
+ /usr/bin/sudo /bin/rm -rf /etc/ism-container
+ /usr/bin/sudo /bin/rm -rf /bootflash/installables/catalog"
sleep 1
echo -e "+ /usr/bin/sudo /bin/rm -rf /bootflash/installables/mgmtext
+ /usr/bin/sudo /bin/rm -rf /bootflash/installables/pnuos
+ /usr/bin/sudo /bin/rm -rf /mnt/pss/pfm_flex_port.config
+ /usr/bin/sudo /bin/rm -rf /mnt/pss/vms_sf_mgmt_extension_key_saved_data.dat
+ /usr/bin/sudo /bin/rm \n"
date
echo -e "ucs-A %$ VDC-1 %$ %PLATFORM-2-PFM_SYSTEM_RESET: Manual system restart from Command Line Interface"
sleep 4
echo -e "
PFM_SYSTEM_RESET: Manual system restart from Command Line Interface

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "sksd" (PID 692) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "res_mgr" (PID 696) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "rpm" (PID 15389) is forced exit.

%CARDCLIENT-3-CARDCL_INFO cardcl_on_exit: graceful_shutdown 1
%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "pktmgr" (PID 1073) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "netstack" (PID 1092) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "mrib" (PID 15814) is forced exit."
sleep 1
echo -e "
%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "m2rib" (PID 15857) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "mcastfwd" (PID 15888) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "nbproxy" (PID 706) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "npacl" (PID 887) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "m6rib" (PID 15821) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "licmgr" (PID 620) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "l3vm" (PID 822) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "kim" (PID 714) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "igmp" (PID 15428) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "fs-daemon" (PID 584) is forced exit."
sleep 1
echo -e "
%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "icmpv6" (PID 1066) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "eth_dstats" (PID 15640) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "crdcfg_server" (PID 726) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "ecp" (PID 15443) is forced exit.

incrond[16683]: (system::watch.conf) CMD (/isan/bin/etc_persist_ha_sync.sh /etc dcos-xinetd.pid IN_DELETE)
%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "device_test" (PID 837) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "bloggerd" (PID 590) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "assoc_mgr" (PID 15945) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "arp" (PID 1065) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "bios_daemon" (PID 734) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "cardclient" (PID 834) is forced exit.

%CARDCLIENT-3-CARDCL_INFO cardcl_on_exit: graceful_shutdown 1"
sleep 2
echo -e "%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "adjmgr" (PID 921) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "Security Daemon" (PID 15483) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "callhome server" (PID 15572) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "Tacacs Daemon" (PID 19048) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "Radius Daemon" (PID 15484) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "Ldap Daemon" (PID 15486) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "AAA Daemon" (PID 15491) is forced exit.

%LIBSYSMGR-3-SIGTERM_FORCE_EXIT Service "Cert_enroll Daemon" (PID 15489) is forced exit.

INIT: Sending processes the KILL signal"
sleep 2
echo -e "
/isan/etc/rc.cleanup ignoring inittab invocations

Stoping third party daemons"
echo -e "Sending all processes the TERM signal\c"
sleep 1
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep .5
echo -e ".\c"
echo -e "
incrond[16683]: stopping service
Sending all processes the KILL signal\c"
sleep 1
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep .5
echo -e ".\c"
echo -e "\nUnmounting filesystems\c"
sleep 1
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep .5
echo -e ".\c"
echo -e "\n[23539.186862] [1621548437] Restarting system\c"
sleep 1
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep 1
echo -e "\n"
sleep .5
echo -e "\n"
sleep .5
echo -e "\n"
sleep 5
read -p "" space
clear
date
echo -e "
UCSM image signature verification successful"

echo -e "\n"
date
echo -e " switch %$ VDC-1 %$ %ASCII-CFG-2-CONF_CONTROL: System ready"
sleep 4

save="no"
while [ "$save" != "yes" ]
do
echo -e "          ---- Basic System Configuration Dialog ----"
echo -e "
  This setup utility will guide you through the basic configuration of
  the system. Only minimal configuration including IP connectivity to
  the Fabric interconnect and its clustering mode is performed through these steps.

  Type Ctrl-C at any time to abort configuration and reboot system.
  To back track or make modifications to already entered values,
  complete input till end of section and answer no when prompted
  to apply configuration.

first-setup:    Warning:  is EMPTY. using switch as name

   Starting GUI for initial setup.

   Switch can now be configured from GUI. Use https://192.168.65.127 and click
   on 'Express Setup' link. If you want to cancel the configuration from GUI and go back,
   press the 'ctrl+c' key and choose 'X'. Press any other key to see the installation progress from GUI
   Note: Intersight management mode setup available through console based configuration method alone.


^C
  Type 'reboot' to abort configuration and reboot system"

read -p "or Type 'X' to cancel GUI configuratuion and go back to console  or Press any other key to see the installation progress from GUI (reboot/X) ? " X
echo -e
read -p "  Enter the configuration method. (console/gui) ? " console
echo -e
read -p "  Enter the management mode. (ucsm/intersight)? " mode
mode=${mode+intersight}
echo -e
read -p "  You have chosen to setup a new Fabric interconnect in "intersight" managed mode. Continue? (y/n): " y
echo -e
read -p "  Enforce strong password? (y/n) [Y]: " strong
strong=${strong:-Y}
echo -e
read -s -p "  Enter the password for  admin: " passwd
echo -e
read -s -p "  Confirm the password for admin: "
echo -e
echo -e
read -p "  Enter the switch fabric (A/B) [A]: " A
A=${A:-A}
echo -e
read -p "  Enter the system name: " name
name=${name:-ucs}
echo -e
read -p "  Physical Switch Mgmt0 IP address: " ipv4_addr
ipv4_addr=${ipv4_addr:-192.168.10.11}
echo -e
read -p "  Physical Switch Mgmt0 IPv4 netmask: " netmask
netmask=${netmask:-255.255.255.0}
echo -e
read -p "  IPv4 address of the default gateway: " gw
gw=${gw:-192.168.10.1.}
echo -e
read -p "    DNS IP address : " dns
echo -e
read -p "  Configure the default domain name? (yes/no) [n]:"  

echo -e "\n  Following configurations will be applied:\n
     Management Mode=$mode
     Switch Fabric=$A
     System Name=$name
     Enforced Strong Password=$strong
     Physical Switch Mgmt0 IP Address=$ipv4_addr
     Physical Switch Mgmt0 IP Netmask=$netmask
     Default Gateway=$gw
     DNS Server=$dns
\n
"

read -p "Apply and save the configuration (select 'no' if you want to re-enter)? (yes/no): " save
save=${save:-no}

done

echo -e "\n\n\n\n\n
  Applying configuration. Please wait\c"
sleep 1
echo -e ".\c"
sleep .5
echo -e ".\c"
sleep .5
echo -e ".\c"

echo -e "  Configuration file - Ok"
sleep 1
echo -e "  Completing basic configuration setup\n"
 
date
echo -e "$name-A %$ VDC-1 %$ %SECURITYD-2-FEATURE_ENABLE_DISABLE: User  has enabled the feature bash-shell\n"
sleep 2
echo -e "\c$name-A %$ VDC-1 %$ %USER-2-SYSTEM_MSG: Tacacs : Detected the mgmt interface   - tacacsd
Return from NXOS\n"
sleep 2
echo -e "$name-A %$ VDC-1 %$ %USER-2-SYSTEM_MSG: Starting Intersight managed UCS Processes.. – pmon"
sleep 3

echo -e "
User Access Verification"
read -p "login: " login
read -s -p "Password: " pass

echo -e "\n UCS Intersight Management"
#read -r -p "$name-A# " comm
#read -r -p "$name-A# " -t 65 -n 1 -s

## Changes from here down
# Define a list of commands and corresponding messages

commands=(erase-configuration ping help command4)

while true; do
    # Print the command prompt
    echo -n "$name-A# "
    # Read the command from the user
    read command arg1 arg2

    # Check if the command is valid
    if [[ " ${commands[*]} " == *" $command "* ]]; then
        # Execute the corresponding command
        case $command in
            erase-configuration)
                echo "All UCS configurations will be erased and system will reboot."
                ;;
            ping)
                echo -e "PING $arg1 ($arg1) from $ipv4_addr eth1: 56(84) bytes of data."
                sleep .6
                echo -e "64 bytes from $arg1: icmp_seq=1 ttl=255 time=0.534 ms"
                sleep .5
                echo -e "64 bytes from $arg1: icmp_seq=1 ttl=255 time=0.476 ms"
                sleep .4
                echo -e "64 bytes from $arg1: icmp_seq=1 ttl=255 time=0.378 ms"
                echo -e "\n --- $arg1 ping statistics ---"
                echo -e "3 packets transmitted, 3 received, 0% packet loss, time 1998ms"
                echo -e "rtt min/avg/max/mdev = 0.378/0.462/0.534/0.069 ms"

                ;;
            help)
                echo -e "
  Commands:
  cd                             Change the directory to the allowed directories
  change-domain-name             Update the name of the Fabric Interconnect and the Peer FI
  change-mode                    Change the manageable mode of server
  change-password                Update the password for the admin user of the Fabric interconnect
  clear                          clear the screen
  clear-firmware-cache           Clear an entry from the Intersight firmware cache
  clear-sshkey                   Removes hostname/IP Address entry from known host lists
  cluster-start                  Start cluster server(for initial HA setup)
  connect                        Connect to an endpoint
  cp                             Copy a file from local/remote to remote/local filesystem
  erase-configuration            Erase configuration on Fabric interconnect
  exit                           exit the program
  help                           display help
  list-firmware-cache            List entries in the Intersight firmware cache
  ls                             List the contents of the present directory
  mkdir                          Create a directory under allowed directories
  mv                             Move the file
  ping                           Ping to a hostname/IP Address
  ping6                          Ping to a hostname/IPv6 Address
  pmon                           Manages the FI processes
  pwd                            Displays the present directory
  reboot                         Reboot the system
  rm                             Remove the file
  rmdir                          Remove the directory
  server                         Server operations
  set                            Configure Fabric Interconnect. Try 'help' for more information.
  show                           Show information
  ssh                            SSH to a hostname/IP Address
  tail-mgmt-log                  Print management log of a given module
  telnet                         Telnet to a hostname/IP Address
  traceroute                     Traceroute to a hostname/IP Address
  traceroute6                    Traceroute to a hostname/IP6 Address
  update-device-connector        Update Device Connector of Fabric interconnect
  update-management-package      Update Device management package on Fabric interconnect
  upgrade-equipment              If the equipment is running a version less than 4.1(2a), then upgrade the equipment to 4.1(2a) or above.\n"
                ;;
            command4)
                echo "This is the message for command4"
                ;;
        esac
    else
        # Print an error message if the command is not valid
        echo "Error: incorrect input, try 'help'"
    fi
done



