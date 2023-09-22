#"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"

##PART 1
git clone "https://"$OAuth_token"@github.com/username/repo_name.git"

cd <reponame> #switch to newly created directory, has same name as repo
#Remember to config
git config --global user.name "NAME"
git config --global user.email "EMAIL"

#Edit the README file
nano README.md #Save and closer

#Check status, you will see untracked changes:
git status

#Add file, commit:
git add README.md
git commit #whatever commit message

#Now push the changes:
git push origin main

##PART II
#Create a python script
nano example.py

<<cmt
Add the following script:
"
def git_opeation():
 print("I am adding example.py file to the remote repository.")
git_opeation()
"
cmt

#Remember to add to repo:
git add example.py
git commit

##PART III
#Create a new empty file on the github repo, commit the changes
#Try:
git push origin main #will fail because there is a new commit that you do not have locally

#So, first we need a new pull:
git pull origin main

#Once that's done, we can push again and we're done!







