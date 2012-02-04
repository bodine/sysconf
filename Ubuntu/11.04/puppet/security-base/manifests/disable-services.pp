# security-base/manifests/disable-services.pp

class disable-services {

	
	service { 'inetd': ensure => "stopped", enable => "false", }
	service { 'sendmail': ensure => "stopped", enable => "false", }
	service { 'xfs': ensure => "stopped", enable => "false", }
	#service { 'hotplug': ensure => "stopped", enable => "false", }
	service { 'portmap': ensure => "stopped", enable => "false", }
	service { 'samba': ensure => "stopped", enable => "false", }
	service { 'bind': ensure => "stopped", enable => "false", }
	service { 'exim4': ensure => "stopped", enable => "false", }
	service { 'apache': ensure => "stopped", enable => "false", }
	service { 'apache2': ensure => "stopped", enable => "false", }
	service { 'vsftpd': ensure => "stopped", enable => "false", }
	service { 'hpoj': ensure => "stopped", enable => "false", }
	service { 'cupsys': ensure => "stopped", enable => "false", }
	service { 'wu-ftpd': ensure => "stopped", enable => "false", }
	service { 'snmpd': ensure => "stopped", enable => "false", }
	service { 'lpd': ensure => "stopped", enable => "false", }
	service { 'nfs-user-server': ensure => "stopped", enable => "false", }
	service { 'nfs-kernel-server': ensure => "stopped", enable => "false", }
	service { 'nfs-common': ensure => "stopped", enable => "false", }
	service { 'nis': ensure => "stopped", enable => "false", }
	service { 'postgresql': ensure => "stopped", enable => "false", }
	service { 'mysql': ensure => "stopped", enable => "false", }
	service { 'webmin': ensure => "stopped", enable => "false", }
	service { 'squid': ensure => "stopped", enable => "false", }
	service { 'popa3d': ensure => "stopped", enable => "false", }
	service { 'nmbd': ensure => "stopped", enable => "false", }
	service { 'pcmcia': ensure => "stopped", enable => "false", }
	service { 'bluez-utilz': ensure => "stopped", enable => "false", }
	
} # end of class disable-services
