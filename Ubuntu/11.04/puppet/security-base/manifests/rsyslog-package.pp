# security-base/manifests/rsyslog-package.pp

class rsyslog-package {

	package { 'rsyslog':
		ensure => present,
	}
	
	file {'/etc/rsyslog.conf':
		path => "${target_root}/etc/rsyslog.conf",
		source => "${source_root}/etc/rsyslog.conf",
		require => Package ['rsyslog'],
		owner => 'root',
		group => 'root',
		mode => '644',
		notify => Service['rsyslog'],
	}
	
	service {'rsyslog':
		ensure => running,
		hasstatus => true,
		hasrestart => true,
	}
	
	Package[ 'rsyslog' ] -> File[ '/etc/rsyslog.conf' ]
	Package[ 'rsyslog' ] -> Service[ 'rsyslog' ]
} # end of class rsyslog-package
