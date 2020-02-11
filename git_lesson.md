# Git Lesson Plan
## Before the workshop
* Install git if not already installed
[instructions here](https://carpentries.github.io/workshop-template/#git)
* get github account as well

## Motivation
** Why should we be using version control?**
1) To keep track of changes (avoid the `mypaper_final_final_final_reallythistime.docx` problem.)
2) To give reasons for each change.
3) To preserve multiple versions of documents simultaneously. (this can be done with "branches").
4) To collaborate with others and not create conflicting versions of the same document.

## Overview: What is git doing?
* Git keeps track of your changes. It monitors changes as if they were separate from the document itself.
### How do `git` commands work?
Git commands take the format `git verb options`

## The first time you use git
You will need to tell git who you are so it knows who made the changes in your documents. 

```bash
git config --global user.name "Mickey Mouse"
git config --global user.email "mickey1234@gmail.com"
```

*Optional: Change core editor to `nano` from `vim`*
(for more editor options see [https://swcarpentry.github.io/git-novice/02-setup/index.html](https://swcarpentry.github.io/git-novice/02-setup/index.html))

```bash
git config --global core.editor "nano -w"
```
**Note: You can check out your settings with the following command**
```bash
git config --list
```

## Setting up a repository

**repository**: a storage area (usually a directory) where git can store all the history of a project and information of who changed what and when.

1) Make a new repository
```bash
mkdir microbes
cd microbes
git init
```

Check the repository was created
```bash
git status
ls -a
```
## Common points of confusion:
* Github is not the same as `git`.
* `git` can be used without a github account.
* Github accounts allow other people to use the internet to connect with a `git` repository that is hosted there.