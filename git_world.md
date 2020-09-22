### Basics
git log # to see the snapshots-changes or commits in the repository folder

git show # to see what is happening in your repository

git show ID # to see direct to the intrest

git commit -m "" #to add a and with a message ""

git init # create a folder (.git) in my directory, to keep the total of occured changes.

git status # tell us where are you in the git, the commit that you 

git add # add this or the changes about this TO THE LIST of thing to commited and tracking 

### TIME LINE-LESSON
git diff --stage #show me changes in the stage to be conmmited (when I type $git add)

git diff # show me changes in the working area after I add files

git commit -a -m "" #to add and commit at the same time

### to rename files 
git mv data/readme data data/readme.md # to rename and at the same time tell it to git 

echo "data/seq/*.fastq" >> .gitignore

touch .gitignore

git restore readme.md #fix a mistake

git diff --stage  #to see changes before to commit

### Working together
git push
git clone
git pull
git fetch #(to check before) 
git merge


################## Class the example ########

cd ~/Desktop/data-shell

ls -lR

git init # initialize repo: creates .git/

ls -a

git status

git add readme.md data/readme # git now tracks 
these files

git status

echo "Zea Mays SNP Calling Project" >> readme.md

cat readme.md

git status # readme.md is tracked, previous version in staging area, new version not

echo "Project started 2020-09-24" >> readme.md
git diff
git commit -a -m "added project info to main readme"
git log
git log --pretty=oneline --abbrev-commit

git mv data/readme data/readme.md
git status
git commit -m "added markdown extension to data readme"
git log