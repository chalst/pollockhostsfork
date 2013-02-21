#source this file
#Need binary: curl
#Need: to set up local repo to have a "dist" branch that is not customised

if git diff --exit-code -- host; then	
    curl "$hostsurl" > hosts && git add hosts
    if test $? = 0; then
	echo "./hosts downloaded from $hostsurl and git-add'ed" 
	return 0
    else
	echo "Failed to download and add hosts"
	return 1
    fi
else
    echo "Won't clobber ./hosts while it differs from dist's index"
    return 1
fi
