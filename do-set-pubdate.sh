#source this file
#Need binary: curl
#Need: to set up local repo to have a "dist" branch that is not customised

#First of next two lines is for testing w/out access to curl
pubdate=$(cat test/sample2.rss | lua get-rss-age.lua)
#curl "$rssfeed" | lua get-rss-age.lua | (read -r pubdate; echo "pubdate=$pubdate")

xst=$?
if test $xst = 0 && test -n "$pubdate"; then
    echo "pubdate=\"$pubdate\""
    return 0
else
    echo "Failed to read pubdate"
    return $xst
fi


