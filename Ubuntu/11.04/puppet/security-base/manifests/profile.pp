# security-base/manifests/profile.pp

class profile {

	
	file {'/etc/profile':
		path => "$target_root/etc/profile",
		source => "$source_root/etc/profile",
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
	}
	
} # end of class profile
