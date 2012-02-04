if grep rhosts_auth /etc/pam.d
then
	echo "Looks like .rhosts auth is supported. Please verify the above"
	echo "files."
	exit 1
fi
exit 0
