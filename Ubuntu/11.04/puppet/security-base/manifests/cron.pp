# security-base/manifests/cron.pp

class cron {

	file {'/etc/cron.allow':
		ensure => present,
		source => "${source_root}/etc/cron.allow",
		path => "${target_root}/etc/cron.allow",
		owner => "root",
		group => "root",
		mode => "0400",
	}
	
	file {'/etc/at.allow':
		ensure => present,
		source => "${source_root}/etc/at.allow",
		path => "${target_root}/etc/at.allow",
		owner => "root",
		group => "root",
		mode => "0400",
	}
	
	file {'/etc/cron.deny':
		ensure => absent,
		path => "${target_root}/etc/cron.deny",
	}
	
	file {'/etc/at.deny':
		ensure => absent,
		path => "${target_root}/etc/at.deny",
	}
	
	file {'/etc/crontab':
		ensure => present,
		owner => "root",
		group => "root",
		mode => "0400",
	}
	
	file {'/var/spool/cron/atjobs': 
		ensure => directory, 
		path => "${target_root}/var/spool/cron/atjobs",
		owner => "daemon",
		group => "daemon",
		mode => "1770",
	}
	
	file {'/var/spool/cron/atspool': 
		ensure => directory, 
		path => "${target_root}/var/spool/cron/atspool",
		owner => "daemon",
		group => "daemon",
		mode => "1770",
	}
	
	file {'/var/spool/cron/crontabs': 
		ensure => directory, 
		path => "${target_root}/var/spool/cron/crontabs",
		owner => "root",
		group => "crontab",
		mode => "1730",
	}
} # end of class cron
