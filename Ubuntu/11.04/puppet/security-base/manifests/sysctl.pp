# security-base/manifests/sysctl.pp

class sysctl {

	file {'/etc/sysctl.conf':
		ensure => present,
		source => "${source_root}/etc/sysctl.conf",
		path => "${target_root}/etc/sysctl.conf",
		owner => root,
		group => root,
		mode => "0644",
	}
	
} # end of class sysctl
