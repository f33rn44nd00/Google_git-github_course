###INTRODUCTION TO GITHUB
#Clone repositories from github to create local copies with
git clone <URL_of_Repo> #The Url can be obtained with the "clone" button on Github

#Do changes locally in your machine, then commit
git commit -a -m "Whatever changes you made"

#Now, we can push the changes
git push #will ask for password again

#To enable SSH key pairs:
git config --global credential.helper cache
#Once you enter the credentials, they will be active for 15 minutes

git pull #used to update local copy to the latest copy from github

#Can also create a permament SSH on github

###USING A REMOTE REPOSITORY
#---What is a remote?
#GitHub is a remote repository
#Order is: commit your local changes, pull latest repository, merge if necessary, and only then push

#---Working with Remotes
#In the repo directory, use
git remote -v #to check the urls associated with the origin remote
git remote show origin #gives you more information
git branch -r #allows you to call remote branches
#To change it, you would pull it, merge with your local, and push back to origin
#Can also use:
git status #to check whether the branch is up to date

#---Fetching new changes
git remote show origin #will show if local branches are out of date
git fetch #will update them, but it's done in the remote branches, not automatically in the local ones
#To check changes, you checkout those branches and run git log to see commit history

#To check current commits in the remote repo, use:
git log origin/master
#at this point 'git status' will show whether there are new commits
#Then, you can run
git merge origin/master #to merge the changes into the local branch
#To recap, git fetch will get the remote updates but not merge them, while git pull will get and merge them

#---Updating the Local Repo
git pull #will automatically fetch updates and try to merge them to the current local branch
#The changes can be checked with:
git log -p -1
#If there are new branches (check with 'git remote show origin'), you can pull them by checking them out:
git checkout <new_branch_notonlocal>
git remote update #will fetch the contents of all remote branches but not merge them


###SOLVING CONFLICTS
#---The Pull-Merge-Push Workflow
#If there are changes after our last pull, git won't let us push
#If we have local changes, the pull also won't work (merge conflict)
git log --graph --oneline --all #will show the graph with all the changes
#If there are more commits not reflected in the local copy, check for the last common ancestor
git log -p origin/master #to check the latest commits in the remote
#Edit the file(s) to resolve the conflicts
#git automatically does all possible merges

#---Pushing Remote Branches
#best practice to create a new branch for new features or refactoring code
#first time a new branch is pushed to a new remote repo, need to add:
git push -u origin <name> #-u is 'upstream' flag

#---Rebasing changes
#to avoid problems, we can rebase branches, that is, change the commit they were origially based on
git checkout <branch_name> #switch to latest commit in "refactor" branch (or whichever will be rebased)
git rebase master #rebases branch_name to master (after its latest commit)
#Now, you can merge the commits with fast forward, keeps history linear
#Remember to then delete the branches (assuming no more usage):
git push --delete origin <branch_name>
git branch -d <branch_name>
#Finally, remember to push your changes 'git push'

#---Another Rebasing Example
#rebase can fail, in that case git will mark the conflicts in the relevant files so you can fix them
#it also displays other options like abort on screen

#---Best practice for collab
#Start by syncing all branches
#Small changes in each commit (eg. if changing a variable name, don't also change the functions)
#Merge changes done to the master branch regularly
#Be careful with rebasing, remote git will in general reject rebases to changes already pushed to the remote repo


