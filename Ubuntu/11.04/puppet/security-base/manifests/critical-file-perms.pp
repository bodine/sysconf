# security-base/manifests/critical-file-perms.pp

class critical-file-perms {

	# Here we use puppet to verify a lot of file permissions. This is for
	# sections 7.1 and 7.4 of the CIS standard.
	
	# 7.1 Permissions for /etc/fstab
	file { '/etc/fstab':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '0644',
	}
	
	
		
	# 7.4 Verify passwd, shadow and group file permissions
	file { '/etc/passwd':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '0644',
	}
	
	
	file { '/etc/shadow':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '400',
	}
	
	file { '/etc/group':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '0644',
	}
	
} # end of class critical-file-perms
