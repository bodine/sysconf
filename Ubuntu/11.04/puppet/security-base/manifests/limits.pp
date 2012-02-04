# security-base/manifests/limits.pp

class limits {

	
	file {'/etc/security/limits.conf':
		path => "$target_root/etc/security/limits.conf",
		source => "$source_root/etc/security/limits.conf",
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
	}
	
} # end of class limits
