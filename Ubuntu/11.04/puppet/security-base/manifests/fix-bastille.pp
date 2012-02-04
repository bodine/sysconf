# security-base/manifests/fix-bastille.pp

class fix-bastille {

	# Bastille turns permissions to 000 on /usr/bin/ssh and /usr/bin/scp. 
	# Why?
	# Because ubuntu symlinks rsh to /etc/alternatives/rsh which is then 
	# symlinked to /usr/bin/ssh. When Bastille goes to disable rsh and rcp 
	# it follows symlinks down to ssh and scp and disables them instead. 
	# Great, right?
	
	file { '/usr/bin/ssh':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
	
	file { '/usr/bin/scp':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '0755',
	}
} # end of class fix-bastille
