# security-base/manifests/lsb-fs.pp

class lsb-fs {

	file { '/':
		path => "${target_root}/",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/etc':
		path => "${target_root}/etc",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/var':
		path => "${target_root}/var",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/var/lock':
		path => "${target_root}/var/lock",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '1777',
	}
	
	file { '/var/spool':
		path => "${target_root}/var/spool",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/var/spool/cron':
		path => "${target_root}/var/spool/cron",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/etc/default':
		path => "${target_root}/etc/default",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/etc/security':
		path => "${target_root}/etc/security",
		ensure => 'directory',
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
} # end of class lsb-fs
