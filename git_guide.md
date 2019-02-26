# Hannah's Ultimate Guide to All Useful Things Git

## Basic git workflow

(Assuming you've already created the repository)

0. __pull__ down remote repository (usually github), in case any changes have been made.
1. Make changes to a document
	a. Use ``git status`` to determine which files have been changed, which are commited, and which need to be added. [*optional*]
2. __add__ those changes (this puts files on standby)
3. __commit__ changes (this records the changes in gits 'memory')
4. __push__ those changes to the remote repository so that everything is in sync. 

#### Working Example:

```bash
git pull # pull changes from remote repository (if it's set up)

# Writing a small file as an example
echo "Hello World" > hello.txt

git status # shows which files have been added and which are untracked

git add hello.txt # alternatively, "git add ." will add all files not already in the .gitignore file

git commit -m "message about changes made" # commits the changes. 

# WARNING: Don't skip the -m, otherwise it will open a command-line text editor and force you to write a message anyway

git push # push changes to remote repository (if it's set up)

```



## Setting up a repository
### Creating repository on your computer and syncing it to github

```bash
cd mydirectory # go into the directory first
git init # initialize directory

# Use your favorite text editor to add files that you don't want tracked to git ignore. 
# common examples include system files (prefaced with a "."), 
# files that are too large to be pushed to github, 
# files you don't want to share publicly, etc. 
nano .gitignore


git add . # add everything in the directory that is not in .gitignore

git commit # commit changes locally

```


* Go to github.
* Log in
* Click the new repository button. Don't create a README file or a .gitignore file.
* Click the “Create repository” button.

```bash
git remote add origin https://github.com/username/new_repo # connect your repo to the one on github. 

git push -u origin master # set the remote as upstream to your local directory (i.e. source of information and reference directory that changes will be pushed to.)

```

## Branches
### What are branches for?
Branches allow you to make changes to your folder without changing the "master" branch. (i.e. the original copy, or the one that you want to keep.)

### Determining what branch you're currently on

```bash
git branch
```

### Creating a new branch

```bash
# 3 ways to do this; branch name "development"

# 1 - from scratch
git branch development

# 2 - based on historic point
# Assuming everything is up to date.
# make changes to files and commit them

git log # displays commits and their identifiers

git branch development <my commit identifier> # create a branch starting at a particular historic commit

# 3 - create a branch and change to it in one command
git checkout -b development

```
### Changing between branches

```bash
git branch # determine what branch you're on and which branches are available to swich to

git checkout development # (switch from your current branch to the development branch)
```
### Merging a branch back into the main line safely

One good strategy to prevent any mistakes or problems that might occur when merging a branch into the main line, is to first merge the mainline into the branch and *then* merge that branch back into the main line. 

```bash
# assuming you have a branch called "development"

git checkout development # change to development branch from wherever you are right now

git merge master # merges master branch into the current branch (i.e. development)

# now resolve any merge conflicts

git checkout master # change from the development branch to the master branch

git merge development # merge branch back into development

```

### Fancy merge tricks

### Deleting branches

```bash
git checkout master # first switch away from development branch and onto the master branch
git branch -d development # deletes development branch
```

### Deleting branches safely after merge

## Working with other people
### Working on someone else's project
### Managing a project

## Nifty tricks
#### Setting up ssh so you don't have to write your password all the time
more info here: https://kbroman.org/github_tutorial/pages/first_time.html


## In case of Emergency, read this
#### I need to undo my commit!
#### I need to undo my ```git init```!


