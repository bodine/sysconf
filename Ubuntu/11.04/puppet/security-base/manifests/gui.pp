# security-base/manifests/gui.pp

class gui {

	# Is there a critical mission-critical reason to allow use of PCMCIA or 
	# USB-based devices on this system? If the answer is no, then perform the 
	# action below.
	
	if $gui == 'true' {
		$gui_package_state = "present"
	
		package { 'xserver-common': ensure => $gui_package_state, }
	
		fail("This puppet manifest is not done. Set up rules to secure X")
		# Prevent X Server From Listening On Port 6000/tcp
		# file for /etc/X11/xdm/Xservers
		# file for /etc/X11/gdm/gdm.conf
		# file for /etc/X11/xinit/xserverrc
		# file for /etc/X11/xdm/Xresources
	
	} else {
		$gui_package_state = "absent"
	
		package { 'xserver-common': ensure => $gui_package_state, }
	}
	
	
} # end of class gui
