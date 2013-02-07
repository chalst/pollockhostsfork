#source this file
#Need binary: git (with checkout, shortlog)
#Need: to set up local repo to have a "dist" branch that is not customised

# test in branch 'dist' (like `git checkout dist`)
test -n "$pubdate" || return 1

git shortlog | grep -e "$pubdate" 

xst=$?
if test $xst = 0; then
     echo "$pubdate logged already"
     return 1
elif test $xst -ge 2; then
     echo "grep -e $pubdate fails with exit status $xst"
     return $xst
fi

commitmsg="fetch update of $pubdate from $hostsurl"
echo "commitmsg=\"$commitmsg\""
return 0

