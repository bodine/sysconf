# security-base/manifests/usb-packages.pp

class usb-packages {

	# Is there a critical mission-critical reason to allow use of PCMCIA or 
	# USB-based devices on this system? If the answer is no, then perform the 
	# action below.
	
	if $needs_usb == 'true' {
		$usb_state = "present"
	} else {
		$usb_state = "absent"
	}
	
	case $operatingsystem {
		ubuntu: { 
	#		package { 'libusb-0.1-4': ensure => $usb_state, }
			package { 'usbutils': ensure => $usb_state, }
		}
	
		debian: { 
			package { 'hotplug': ensure => $usb_state, }
		}
	
		default: { 
			fail("Unrecognized operating system") 
		}
	}
	
} # end of class usb-packages
