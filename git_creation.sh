#! /bin/bash

# In Google's qwiklab Linux wirtual machine you first need to install git:
sudo apt update
sudo apt install git
git --version

#Then, you will need to create a Git repository
    #First, create a directory
mkdir my-git-repo

    #navigate to it
cd my-git-repo

    #initialize the git repository
git init

#Configure Git
git config --global user.name "f33rn44nd00"
git config --global user.email "130046192+f33rn44nd00@users.noreply.github.com"

#Create a README file to add to the repository
nano README #add any text to it and save and exit (CTRL+O and ENTER, then CTRL+X)

    #Since it's created in a directory with a git repository, Git will recognize modifications
    #Check changes
git status #the console will display 'README' in the "untracked files" section

    #add the file to the staging area:
git add README

    #commit the changes
git commit #enter the initial commit message

#Now for the second commit, reopen the README file to modify it:
nano README #Edit the text inside the file and save and exit

    #you can view the changes in the file with:
git diff README

    #remember to add the file to the staging area again
git add README

    #finally, commit the changes:
git commit -m "This is my second commit"

