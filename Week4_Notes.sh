###PULL REQUESTS
#All on Github

#1 - fork the repository
#2 - make the changes
#3 - do a pull request

#---Squashing changes
#For rebases, use the -i flag
git rebase -i master
#Will open a doc with all commits, you can choose the commits, 'pick' is the default, can use 'squash' to combine with the one before it or 'fixup' to ignore

#However, you will be unable to push the commits directly because the remote branch will have two commits and we squashed them
#This means they are seen as three different commits so we use

git push -f #-f is for 'force'

