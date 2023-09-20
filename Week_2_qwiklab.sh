#In the qwiklab console
#Navigate to the repository
cd ~/food-scripts
ls
cat favorite_foods.log
./food_count.py
./food_question.py
#will return an error the first time, it's the script we have to fix

#checking the repository
git status
git log

#configure repository with your own name
git config user.name "Name"
git config user.email "user@example.com"

#Create a new branch
git branch improve-output #Use the exact same name because the commit check in Qwiklabs will fail otherwise
git checkout improve-output

#Open the script
nano food_count.py

#Add the line 'print("Favourite foods, from most popular to least popular")' to the Python script in the "Print out liked foods" section

#Add file to repo and commit the changes
git add food_count.py
git commit -m "Adding a line in the output describing the utility of food_count.py script"

#Revert the prior commit
git log #find the appropriate commit
git revert [commit-ID]
./food_question.py #confirm this now works


