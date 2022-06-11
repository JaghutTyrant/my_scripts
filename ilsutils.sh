
confirm(){
	msg=$1
	rsp=""
	printf "%s \n(Y/n): " "${msg}"
	read -r -e rsp # -r option to prevent \ to scape characters
	rsp=$(echo "$rsp" | tr "[:upper:]" "[:lower:]")
	if test "${rsp}" != "y"; then
		echo "Aborting operation"
		return 1 
	fi
	return 0 
}

get_date(){
	date +"%F_%H-%M"
}
