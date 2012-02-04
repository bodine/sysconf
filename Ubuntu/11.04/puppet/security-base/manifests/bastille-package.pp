# security-base/manifests/bastille-package.pp

class bastille-package {

	package { 'bastille':
		ensure => present,
	}
	
	file {'/usr/sbin/bastille':
		path => "/usr/sbin/bastille",
		ensure => present,
	}
	
	file {'/var/lock/bastille':
		path => "${target_root}/var/lock/bastille",
		ensure => directory,
		owner => 'root',
		group => 'root',
		mode => '700',
	}
	
	Package[ 'bastille' ] -> File[ '/usr/sbin/bastille' ]
} # end of class bastille-package
