# security-base/manifests/sysstat-package.pp

class sysstat-package {

	package { 'sysstat':
		ensure => present,
	}
	
	file {'/etc/default/sysstat':
		ensure => present,
		source => "${source_root}/etc/default/sysstat",
		path => "${target_root}/etc/default/sysstat",
		mode => "0644",
		owner => "root",
		group => "root",
	}
	
	Package[ 'sysstat' ] -> File[ '/etc/default/sysstat' ]
} # end of class sysstat-package
