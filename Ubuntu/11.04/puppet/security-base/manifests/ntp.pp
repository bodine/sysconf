# security-base/manifests/ntp.pp

class ntp {

	package { 'ntp':
		ensure => present,
	}
	
	file {'/etc/ntp.conf':
		path => "$target_root/etc/ntp.conf",
		source => "$source_root/etc/ntp.conf",
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
	}
	
	#Package[ 'ntp' ] -> File[ '/etc/ntp.conf' ]
} # end of class ntp
