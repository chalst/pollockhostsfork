
*Why does this repo exist?*

Because it was asked for on HN:
    	http://news.ycombinator.com/item?id=3291760

It might be a worthwhile project if I am good about keeping this in sync with Dan Pollock's authoritative hosts file.


*What does do-download-hosts do?*

It downloads the remote hosts file after moving to (checking out the) dist branch, and making sure it doesn't clobber any local changes.  It will give output from running git diff on the hosts file *before* curling the current hosts file; you will need to run git diff yourself to see what changes the download has made.

It is just shell commands, not a proper script, so you need to either source it, or invoke it from a new shell:

    	> . do-download-hosts
    	> #Or sh do-download-hosts


*Why doesn't do-download-hosts download the hosts file?*

There are three preconditions that must be satisfied:

1. You need to run this from a Git repository with a dist branch;
2. The hosts file needs to be in sync with the dist index;
3. You need to have curl installed.

If it still doesn't work, email me at my stewart account at textproof.com

