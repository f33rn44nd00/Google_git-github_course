
##PART 1 - Clone forked repository in virtual env
git clone "https://"$OAuth_token"@github.com/f33rn44nd00/it-cert-automation-practice.git"

git remote -v #If not found use:

git remote add upstream https://github.com/f33rn44nd00/it-cert-automation-practice.git


##PART 2 - Remember to config
git config --global user.name f33rn44nd00
git config --global user.email 130046192+f33rn44nd00@users.noreply.github.com

##PART 3 - Fix the script
#Create branch
git branch improve-username-behavior
git checkout improve-username-behavior

cd ~/it-cert-automation-practice/Course3/Lab4
ls

#Open script to fix
cat validations.py
nano validations.py

#actually fix it

<<cmt
Add:
"
print(validate_user("blue.kale", 3)) # True
print(validate_user(".blue.kale", 3)) # Currently True, should be False
print(validate_user("red_quinoa", 4)) # True
print(validate_user("_red_quinoa", 4)) # Currently True, should be False
"
cmt

#Run the validations script
python3 validations.py


##PART 4 - Commit the changes
git add validations.py
git commit

#Add any message but remember to add "Closes #1"


##PART 5 - Push changes
git push origin improve-username-behavior

#Create a pull request in github

