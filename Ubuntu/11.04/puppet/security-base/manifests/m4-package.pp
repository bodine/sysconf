# security-base/manifests/m4-package.pp

class m4-package {

	package { 'm4':
		ensure => present,
	}
} # end of class m4-package
