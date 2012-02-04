class security-base {
	class { 'lsb-fs': }
	class { 'm4-package': }
	class { 'ntp': }
	class { 'bastille-package': }
	class { 'critical-file-perms': }
	class { 'fix-bastille': }
	class { 'rsyslog-package': }
	class { 'sysstat-package': }
	class { 'openssh-server-package': }
	class { 'disable-services': }
	class { 'sysctl': }
	class { 'usb-packages': }
	class { 'pcmcia-packages': }
	class { 'ftpusers': }
	class { 'cron': }
	class { 'gui': }
	class { 'login-defs': }
	class { 'useradd': }
	class { 'profile': }
	class { 'limits': }
	class { 'issue': }
}
