# security-base/manifests/login-defs.pp

class login-defs {

	
	file {'/etc/login.defs':
		path => "$target_root/etc/login.defs",
		source => "$source_root/etc/login.defs",
		ensure => present,
		owner => root,
		group => root,
		mode => 0640,
	}
	
} # end of class login-defs
