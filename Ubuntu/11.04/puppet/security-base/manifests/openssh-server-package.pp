# security-base/manifests/openssh-server-package.pp

class openssh-server-package {

	package { 'openssh-server':
		ensure => present,
	}
	
	file {'/etc/ssh':
		path => "${target_root}/etc/ssh",
		ensure => directory,
		mode => "0755",
		owner => "root",
		group => "root",
	}
	
	file {'/etc/ssh/sshd_config':
		ensure => present,
		source => "${source_root}/etc/ssh/sshd_config",
		path => "${target_root}/etc/ssh/sshd_config",
		mode => "0644",
		owner => "root",
		group => "root",
	}
	
	file {'/etc/ssh/ssh_config':
		ensure => present,
		source => "${source_root}/etc/ssh/ssh_config",
		path => "${target_root}/etc/ssh/ssh_config",
		mode => "0644",
		owner => "root",
		group => "root",
	}
	
	
	File [ '/etc/ssh' ] -> Package [ 'openssh-server' ]
	Package[ 'openssh-server' ] -> File[ '/etc/ssh/sshd_config' ]
	Package[ 'openssh-server' ] -> File[ '/etc/ssh/ssh_config' ]
	
	File[ '/etc/ssh' ] -> File[ '/etc/ssh/sshd_config' ]
	File[ '/etc/ssh' ] -> File[ '/etc/ssh/ssh_config' ]
} # end of class openssh-server-package
