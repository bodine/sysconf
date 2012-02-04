# security-base/manifests/ftpusers.pp

class ftpusers {

	file {'/etc/ftpusers':
		ensure => present,
		source => "${source_root}/etc/ftpusers",
		path => "${target_root}/etc/ftpusers",
		owner => "root",
		group => "root",
		mode => "0600",
	}
} # end of class ftpusers
