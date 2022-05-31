- if `git pull` doesn't work try `git pull origin master`

## Adding files
`git add --all` == `git add -A` adds all changes and deletes
`git add .` adds only changes

Git considers each commit change point or "save point"

## Checking current status
- `git status --short` or `git status -s` to see the changes in a more compact way:
	?? - Untracked files
	A - Files added to stage
	M - Modified files
	D - Deleted files

`git log` to see log of all commits
	use `B` and `Spacebar` to navigate up and dn, and `q` to quit

## Branches
- `git branch my-branch-name` creates a new branch
- `git branch` to see existing branches
- `git checkout my-branch-name` moved current workspace to that branch
- `git checkout -b my-branch-name` create branch and move to it

- `git merge another-branch` to merge another-branch into current branch
- `git branch -d another-branch` to delete another-branch

### conflicts
if after the merge there are conflicts with a "conflictedfile.txt", you need to open it, you will see it had been edited to mark the problems/differencies
edit it as you like, solve the conflict, then
`git add conflictedfile.txt` and then
`git commit -m "I solved that conflict!"`
then you can also delete the old branch

for binary files: you can choose which file to keep
- `git checkout --theirs -- path/to/conflicted-file.txt` to keep the version from the branch you're trying to merge
- `git checkout --ours -- path/to/conflicted-file.txt`  to keep the version present in the current branch

## Revert/Reset to a previous commit
with `git log` you will see each commit have their SHA-1 checksum
	
~~~~
	commit 6f0b21972ee92c3f0a7b5df21bcb14f3084e5f8e (HEAD -> master)
Author: noizhardware <noisefuel@gmail.com>
Date:   Mon Feb 7 09:53:37 2022 +0100

    stocazzo

commit 3d5991a2ce0225feb6a1c6cc1890de6432ee93da
Author: noizhardware <noisefuel@gmail.com>
Date:   Mon Feb 7 09:50:37 2022 +0100

    uno

commit 31e027142d1ce49c1e06f92bdd4b7879afd447b4
Author: noizhardware <noisefuel@gmail.com>
Date:   Mon Feb 7 09:49:58 2022 +0100

    prova comment
~~~~
you can use those to go back in time to that commit, like this:
`git reset --hard 3d5991a2ce0225feb6a1c6cc1890de6432ee93da` to revert to commit "uno"
this will delete all commits more recent than "uno"

OR, you can (from https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit )
~~~~
git revert --no-commit 0766c053..HEAD
git commit
This will revert everything from the HEAD back to the commit hash, meaning it will recreate that commit state in the working tree as if every commit after 0766c053 had been walked back. You can then commit the current tree, and it will create a brand new commit essentially equivalent to the commit you "reverted" to.

(The --no-commit flag lets git revert all the commits at once- otherwise you'll be prompted for a message for each commit in the range, littering your history with unnecessary new commits.)

This is a safe and easy way to rollback to a previous state. No history is destroyed, so it can be used for commits that have already been made public.
~~~~
but I never tested it

## Remote
	push a local repo to a remote server
	`git remote add origin https://github.com/w3schools-test/hello-world.git`
	then push and set it as the default remote branch
	`git push --set-upstream origin master`

## Local repo
- `git add -A` to add all changes and deletes
- `git commit`, then you enter vi to edit comment
- press `i`, now you can type your comment
- when you're done, press `Esc`
- save and exit, using `:x` or `:wq` (it's the same)

## install
`sudo apt install git`

## sourcehut
### setup
from https://man.sr.ht/tutorials/set-up-account-and-git.md
- `ssh-keygen` (if on Linux, use a password!)
- then you should be pointed to a key file (usually C:\Users\ninja\.ssh\id_rsa.pub)
linux (/home/nff/.ssh/id_rsa.pub)
- copy the entire content of the file
- go to https://meta.sr.ht/keys
- paste it in "SSH Public Key:" and click "Add Key"

### create a repo
- if you haven't yet, init you git repo:
	`git init`
- add sourcehut as a remote:
	`git remote add origin git@git.sr.ht:~username/projectname`
- if you made a mistake, you can
	`git remote set-url origin git@git.sr.ht:~correctUsername/correctProjectname`
- do the "push all":
~~~~
git add -A
git commit -m "comment"
git push origin master
~~~~
if the repository didn't previously exist, you'll be prompted with a link to create the repository on git.sr.ht — click that link and fill out the form on that page. You'll be redirected to your repository on git.sr.ht: you're done!
in this step you can set your repo as `Public`, `Unlisted` or `Private`

- licensing: (from https://man.sr.ht/license.md)
Once you pick a license, add it to your project by copying the plain-text version into a file called "LICENSE" or "COPYING" at the root directory of your repository.

### clone
- copy the "read-only" link on a repo's page
- git clone https://git.sr.ht/~noizhardware/666cpu
- e invece NOOOOOO!!! devi usare la read/write, tipo:
    git@git.sr.ht:~noizhardware/666cpu
- you're done!

### troubleshooting
Make sure to always use the read/write link when cloning, like:
    git@git.sr.ht:~noizhardware/666cpu

if having problems when pushing or even when cloning for the first time, like a 403 error, check the config file `repoFolder/.git/config`, or just the url you're cloning from; it should look like this:
~~~~
[core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
[remote "origin"]
        url = git@git.sr.ht:~noizhardware/uxnBao
        fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
        remote = origin
        merge = refs/heads/master
~~~~

If it doesn't, correct it, especially the part `url = git@git.sr.ht:~noizhardware/`

### browsing projects
- https://sr.ht/projects

## GitHub
- SSH:
	- verify if you already have a SSH key `ls -al ~/.ssh`
	- if yes, `cat ~/.ssh/id_rsa.pub`, and copy it
	- if you dont have a key, create one:
		- `ssh-keygen` (if on Linux, use a password!)
		- then you should be pointed to a key file (usually C:\Users\ninja\.ssh\id_rsa.pub)
		linux (/home/nff/.ssh/id_rsa.pub)
		- copy the entire content of the file
	- https://github.com/settings/keys to add the key

OR you can:
- generate a token https://github.com/settings/tokens
copy it and paste it somewhere safe
now use it in place of your password when pushing from terminal
done.

THEN you need to: `git remote set-url origin git@github.com:noizhardware/repoName.git`

## push all
~~~~
git add --all
git commit -m "comment"
git push origin master
~~~~
"master" can be any other branch

## add a local folder to a repo with a different name (keeping the local folder's name)
* create an empty repo from the github website
* run gitBash as administrator
`git config --global user.email "mymail@gmail.com"`
`git config --global user.name "mygithubusername"`
* go into your local folder:
`git init`
`git add .`
`git commit -m "my commit message"`
`git remote add origin https://github.com/username/repoName`
`git remote -v`
`git push -f origin master`
`git status`
* then from gitHub desktop:
  - add Local Repository
  - navigate to the local directory, select it
  - "Publish Branch" it won't change anything, don't worry
* now you're all sync'd up and done :)

---

## setup
`git config --global user.name "username"`
`git config --global user.email "your_email@whatever.com"`
you need to actually use double quotes around the username and email
Also, for Unix/Mac users:
EXECUTE:
     git config --global core.autocrlf input
     git config --global core.safecrlf true
And for Windows users:
     git config --global core.autocrlf true
     git config --global core.safecrlf true

## cloning
it's when you pull from a remote source for the first time, copying it to your local system
`git clone addressofrepositoy`
example: `git clone https://github.com/noizhardware/cBao.git`

`git status` to check the status of the repo you're in now

## Pull
To pull remote changes:
- go in local repo directory
- `git pull`

## Push
To push local changes:
- `git add --all` takes care of locally removed files, will remove on remote as well
- `git add .` new local files will be added to remote, local removed files will **NOT** be removed from remote
- `git add -u` only changes to existing files will be applied to the remote

- `git commit` you're gonya be taken to a file, edit it with your commit message, save and exit
- `git push` asks for username + pwd

## Add a Submodule to a repo
~~~~
git submodule add https://github.com/chaconinc/DbConnector
git commit -m "my comment"
git push
~~~~

## Update Submodules in Parent Repo
~~~~
git submodule foreach git pull origin master
git add .
git commit -m "update submodules"
git push
~~~~


## Check repo Status
~~~~
git status
~~~~

#credentials
#pvt
#git
#software
#coding
