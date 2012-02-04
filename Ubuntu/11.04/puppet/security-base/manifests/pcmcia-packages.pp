# security-base/manifests/pcmcia-packages.pp

class pcmcia-packages {

	# Is there a critical mission-critical reason to allow use of PCMCIA or 
	# USB-based devices on this system? If the answer is no, then perform the 
	# action below.
	
	if $needs_pcmcia == 'true' {
		$pcmcia_state = "present"
	} else {
		$pcmcia_state = "absent"
	}
	
	case $operatingsystem {
		ubuntu: { $pcmcia_pkg = "pcmciautils" }
		debian: { $pcmcia_pkg = "pcmciacs" }
		default: { fail("Unrecognized operating system for webserver") }
	}
	
	package { 'pcmcia': name => $pcmcia_pkg, ensure => $pcmcia_state, }
	
} # end of class pcmcia-packages
