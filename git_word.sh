git log # to see the snapshots-changes or commits in the repository folder
git show # to see what is happening in your repository
git show ID # to see direct to the intrest
git commit -m "" #to add a and with a message ""
git init # create a folder (.git) in my directory, to keep the total of occured changes.
git status # tell us where are you in the git, the commit that you 
git add # add this or the changes about this TO THE LIST of thing to commited and tracking 
# TIME LINE-LESSON
git diff --stage #show me changes in the stage to be conmmited (when I type $git add)
git diff # show me changes in the working area after I add files
git diff # displays differences between commits.

git commit -a -m "" #to add and commit at the same time
#to rename files 
git mv data/readme data data/readme.md # to rename and at the same time tell it to git 
echo "data/seq/*.fastq" >> .gitignore
touch .gitignore  #file tells Git what files to ignore.

git restore readme.md #fix a mistake
git diff --stage  #to see changes before to commit

#### Working together

git push #copies changes from a local repository to a remote repository.
git pull #copies changes from a remote repository to a local repository.
git push #to publish your local commits
git clone
git pull
git fetch #(to check before) 
git merge

git log --graph 
git checkout # to recovers old versions of files.

########## Class the example ########
cd ~/Desktop/data-shell/Class_notes
ls -lR
git init # To iniciate a repo: creates .git/
ls -a
git status
git add git_world.md  # git now tracks these files
git status
echo "Zea Mays SNP Calling Project" >> readme.md
cat readme.md
git status # readme.md is tracked, previous version in staging area, new version not

echo "Project started 2020-09-24" >> readme.md
git diff
git commit -a -m "added git_notes"
git log
git log --pretty=oneline --abbrev-commit

git mv data/readme data/readme.md
git status
git commit -m "added markdown extension to data readme"
git log

git remote -v # 
git remote add origin git@github.com:InesBerro/Class_notes.git
git remote -v # check the nickname for your central (github) repo. default: origin
git branch # to double-check which branch you are on. default: master or main
git push -u origin master # pushes current local branch to repo "origin", its branch "master"

git commit -m "added markdown extension to data readme"
git log

## To clone a zmays repository as apratice
git clone git@github.com:cecileane/zmays-snps.git ##to clone a repository
cd zmays-snps
git remote -v
## check the update on github; 
## and pull these changes from the shell
git branch -vv
git pull origin master 

git pull origin master
git log --graph

##Basic collaborative Workflow
git pull origin master #update your local repo 
git add #make your changes and stage them 
git commit #-m commit your changes
git push origin master #upload the changes to GitHub 

###
git commit -a -m # to add and commit your changes in one command


## Github for collaboration

##Remote commands
git remote -v #lists all the remotes that are configured ()
git remote add [name] [url] #is used to add a new remote
git remote remove [name] #removes a remote. Note that it doesn’t affect the remote repository at all - it just removes the link to it from the local repo.
git remote set-url [name] [newurl] #changes the URL that is associated with the remote. 
#This is useful if it has moved, e.g. to a different GitHub account, or from GitHub to a different hosting service. Or, if we made a typo when adding it!
git remote rename [oldname] [newname] #changes the local alias by which a remote is known - its name. For example, one could use this to change upstream to fred.


##Making exe.

git remote add origin git@github.com:InesBerro/Class_notes #to create a remote in git

git push -u origin master #to push to origin the master

git branch -vv



###############
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add action git@github.com:InesBerro/Class_note.git
git push -u action master
        