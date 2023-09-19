### ADVANCED GIT INTERACTION ###
#---Skipping staging area
# to skip the staging area, use -a flag in the 'commit' command, 
# this is not equivalent to using add then commit bc new files still need to be added
git commit -a #can also use -m flag for the commit message directly

#---Getting more information about changes
#Use the -p flag with (p for patch) with the 'git log' command to show the lines that changed
git log -p #equivalent to diff -u for two files
#exit with q

#use the --stat flag to show the names of files that were changed
git log --stat

#use git diff to show all changes, including unstaged ones
git diff
#or with --staged flag to show only staged changes
git diff --staged

#---Deleting and Renaming Files
#remove command will remove files from the repo
git rm filename.script #warning, removes from the repository AND deletes the file from the system

git mv filename_old filename_new #renames file, also stages the change

echo filename > .gitignore #to ignore files

### UNDOING THINGS ###
#---Undoing changes before committing
git checkout #will undo changes after latest snapshot
git reset HEAD filename #will unstage filename

#---Amending commits
git commit --amend #will amends to the latest commit

#---Rollbacks
git revert HEAD #will create a commit with the inverse of what was done in the latest commit
git log -p -2 #-2 flag shows the 2 latest commits

#---identifying a commit
#Using the commit id (hash) to specify a commit for a rollback
git show commit_HASH #shows changes
git revert commit_HASH #reverts the changes (Can use the first characters in the commit hash)

#---Reading
git checkout branch #used to change branches (you must first create it with 'git branch <branch_name>')
git checkout -b <new_branch_name> #will cause a new branch to be created and switch to it, WARNING: if the branch exists it is 
#full docs in https://git-scm.com/docs/git-checkout
git reset <parameters here> #resets the repo to some specified state: https://git-scm.com/docs/git-reset
#Other undo methods: https://git-scm.com/book/en/v2/Git-Basics-Undoing-Things


### BRANCHING AND MERGING ###
#---What is a branch?
#pointer to particular commits mainly for testing purposes

#---Creating new branches
git branch <name> #create branch
git checkout <name> #switch to 
git checkout -b <name> #create branch and switch to it, if branch already exists will reset it

#---Working with branches
#commits on other branches will only show in the history of that 
#checkout moves the HEAD to the relevant commit on the specified branch
git branch -d <name> #deletes the specified branch, git will trigger a warning if there are unmerged changes in that branch

#---Merging
git merge <name_of_branch> #will merge the specified branch into the current branch
#If more changes have occurred in either branch, merges can be difficult and will result in a conflict

#---Merge Conflicts
#ie. when changes to the same file have been made and committed in both branches
#git notifies of the conflict after running the merge command
#git also adds the information of both files into the file itself, when opened with an editor it will show it
#you can also use 'git merge --abort' to fix it manually
git commit #when conflicts are resolved to conclude the merge
git log --graph --oneline #will show a tree of the version history, with the merges

#---Reading
git branch -d #deletes the branch (equivalent to --delete) and:
git branch -D # is equivalent to --delete --force
#more details: https://git-scm.com/docs/git-branch#
#Details on git log here: https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History

