# security-base/manifests/useradd.pp

class useradd {

	
	file {'/etc/useradd':
		path => "$target_root/etc/useradd",
		source => "$source_root/etc/useradd",
		ensure => present,
		owner => root,
		group => root,
		mode => 0700,
	}
	
} # end of class useradd
