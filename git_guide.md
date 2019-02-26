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

## Branches

## Working with other people

## Nifty tricks

## In case of Emergency, read this
#### I need to undo my commit!
#### I need to undo my ```git init```


