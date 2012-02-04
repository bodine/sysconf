# security-base/manifests/issue.pp

class issue {

	
	file {'/etc/issue':
		path => "$target_root/etc/issue",
		source => "$source_root/etc/issue",
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
	}
	
} # end of class issue
