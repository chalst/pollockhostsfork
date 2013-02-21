
*Why does this repo exist?*

Because it was asked for on HN:
    	http://news.ycombinator.com/item?id=3291760

It might be a worthwhile project if I am good about keeping this in sync with Dan Pollock's authoritative hosts file.


*What are do-update and the other do-... files for?*

`do-update` downloads the remote `hosts` file after moving (checking out the) dist branch, and making sure it doesn't clobber any local changes.  It will give output from running git diff on the hosts file *before* curling the current hosts file; you will need to run git diff yourself to see what changes the download has made.

It is a shell script; I recommend using 

    sh do-update

to run it.

The other do-... scripts are sequences of shell commands that are source'd by `do-update` as its individual stages.  I organised them this way because it has sometimes  made sence to run them independentaly: if you do, be sure to source them, since they set and use the non-environment variables $pubdate and $commitmsg.


*Why doesn't do-update download the hosts file?*

Three preconditions must be satisfied:

1. You need to run this from a Git repository with a dist branch;
2. The hosts file needs to be in sync with the dist index;
3. You need to have curl installed.

If it still doesn't work, email me at my stewart account at textproof.com

