$host_name = "HOSTNAME"
$subnet = "SUBNET"
$owner = "OWNER"


$target_root = ""
$source_root = "BASEDIR/${lsbdistid}/${lsbdistrelease}/root"

# Is there a mission critical reason to allow use of PCMCIA or USB-based 
# devices on this system?
$needs_usb = "false"
$needs_pcmcia = "false"
$gui = "false"

include 'security-base'

file { '/etc/hostname':
	path => "${target_root}/etc/hostname",
	ensure => present,
	content => "$host_name",
}
mike@oscar:~/Backup-server/puppet$ 
