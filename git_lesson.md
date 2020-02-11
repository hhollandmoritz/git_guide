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

## Topics
1. Introduction to Git
2. Git in the command line 
    - First steps
    - Setting up repositories
    - Tracking Changes
    - History
    - `.gitignore`
    - Using Github (and other remotes)
    - Collaborating
    - Conflicts
3. Git in RStudio

## Overview: What is git doing?
* Git keeps track of your changes. It monitors changes as if they were separate from the document itself.
#### How do `git` commands work?
Git commands take the format `git verb options`

### The first time you use git...
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

### Setting up a repository

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
You'll see a message about the branch, the commits, and a list of the files including the `.git` file.


### Working in a repository

**First we'll need some files...**

```bash
nano cheese.txt
```

Type the following text in `cheese.txt ` and then press `ctrl+o` `ctrl+x` to save changes and exit `nano`.

```
Cheese is made with milk.
```

#### The git workflow
1. Make changes to file(s)
2. "stage" (`git add`) those file(s).
3.  commit the changes (`git commit -m "message about changes"`)

!["the git workflow" ](/home/hannah/Documents/Fierer_lab/git_guide/git_lesson_imgs/git-committing.svg  "The git workflow")

Now let's do this ourselves:

Check on git status

```bash
git status
```
```bash
git add cheese.txt
```
```bash
git commit cheese.txt -m "wrote about cheese ingredients"
```

**Notes about commit messages:**
 - like a lab notebook - should be informative 

```
git status
```

Let's add some more changes...

```
nano cheese.txt
```
Type the following text in `cheese.txt ` and then press `ctrl+o` `ctrl+x` to save changes and exit `nano`.

```
Cheese is made with milk and microbes.
Cheese is good.
```
Check on the status
```
git status
```
(cheese.txt has been modified, but not staged)

What if we forgot exactly what changed?
```
git diff
git diff --color-words # shows word-by-word changes
```
Shows line-by-line changes in our modified documents. Now that we know the changes, and like them, we can add and commit them.

```
git add cheese.txt
git commit cheese.txt -m "added microbes to ingredients list"
```

#### Now it's your turn:
1) Create a new file called `nutritional_yeast.txt`
2) Write the following line for `nutritional_yeast.txt`
```
Nutritional yeast is made with microbes.
```
3) `add` and `commit` the file.

### Looking back in time

### Ignoring files

### Using Github (and other "remotes")

### Collaborating

### Conflicts

## Git in RStudio

## Common points of confusion:
* Github is not the same as `git`.
* `git` can be used without a github account.
* Github accounts allow other people to use the internet to connect with a `git` repository that is hosted there.