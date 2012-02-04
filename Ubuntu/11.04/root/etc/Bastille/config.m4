# Q:  Would you like to enforce password aging? [Y]
AccountSecurity.passwdage="Y"
# Q:  Should Bastille disable clear-text r-protocols that use IP-based authentication? [Y]
AccountSecurity.protectrhost="Y"
# Q:  Should we disallow root login on tty's 1-6? [N]
AccountSecurity.rootttylogins="N"
# Q:  Would you like to deactivate the Apache web server? [Y]
Apache.apacheoff="N"
# Q:  Would you like to password protect single-user mode? [Y]
BootSecurity.passsum="N"
# Q:  Should we restrict console access to a small group of user accounts? [N]
ConfigureMiscPAM.consolelogin="N"
# Q:  Would you like to put limits on system resource usage? [N]
ConfigureMiscPAM.limitsconf="N"
# Q:  Would you like to set more restrictive permissions on the administration utilities? [N]
FilePermissions.generalperms_1_1="N"
# Q:  Would you like to disable SUID status for mount/umount?
FilePermissions.suidmount="Y"
# Q:  Would you like to disable SUID status for ping? [Y]
FilePermissions.suidping="N"
# Q:  Would you like to disable SUID status for traceroute? [Y]
FilePermissions.suidtrace="Y"
# Q:  Would you like to run the packet filtering script? [N]
Firewall.ip_intro="N"
# Q:  Would you like to add additional logging? [Y]
Logging.morelogging="N"
# Q:  Would you like to set up process accounting? [N]
Logging.pacct="N"
# Q:  Do you have a remote logging host? [N]
Logging.remotelog="N"
# Q:  Would you like to deactivate NFS and Samba? [Y]
MiscellaneousDaemons.remotefs="N"
# Q:  Would you like to disable printing? [N]
Printing.printing="N"
# Q:  Would you like to disable printing? [N]
Printing.printing_cups="N"
# Q:  Would you like to display "Authorized Use" messages at log-in time? [Y]
SecureInetd.banners="Y"
# Q:  Should Bastille ensure inetd's FTP service does not run on this system? [y]
SecureInetd.deactivate_ftp="Y"
# Q:  Should Bastille ensure the telnet service does not run on this system? [y]
SecureInetd.deactivate_telnet="Y"
# Q:  Who is responsible for granting authorization to use this machine?
SecureInetd.owner="OWNER"
# Q:  Would you like to set a default-deny on TCP Wrappers and xinetd? [N]
SecureInetd.tcpd_default_deny="N"
# Q:  Do you want to stop sendmail from running in daemon mode? [Y]
Sendmail.sendmaildaemon="Y"
# Q:  Would you like to install TMPDIR/TMP scripts? [N]
TMPDIR.tmpdir="N"
