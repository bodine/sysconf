# security-base/manifests/securetty.pp

class securetty {

	
	file {'/etc/securetty':
		path => "$target_root/etc/securetty",
		source => "$source_root/etc/securetty",
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
	}
	
} # end of class securetty
