## install
`sudo apt install git`

## sourcehut
### setup
from https://man.sr.ht/tutorials/set-up-account-and-git.md
- `ssh/keygen`
- then you should be pointed to a key file (usually C:\Users\ninja\.ssh\id_rsa.pub)
- copy the entire content of the file
- go to https://meta.sr.ht/keys
- paste it in "SSH Public Key:" and click "Add Key"

- if you haven't yet, init you git repo:
     `git init`
- add sourcehut as a remote:
     `git remote add origin git@git.sr.ht:~username/projectname`
- do the "push all":
~~~~
git add .
git commit -m "comment"
git push origin master
~~~~
if the repository didn't previously exist, you'll be prompted with a link to create the repository on git.sr.ht — click that link and fill out the form on that page. You'll be redirected to your repository on git.sr.ht: you're done!

- licensing: (from https://man.sr.ht/license.md)
Once you pick a license, add it to your project by copying the plain-text version into a file called "LICENSE" or "COPYING" at the root directory of your repository.

### clone
- copy the "read-only" link on a repo's page
- git pull https://git.sr.ht/~noizhardware/666cpu
- you're done!

## push all
~~~~
git add .
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
* go in local repo directory
`git pull`

## Push
To push local changes:
`git add --all` takes care of locally removed files, will remove on remote as well
`git add .` new local files will be added to remote, local removed files will **NOT** be removed from remote
`git add -u` only changes to existing files will be applied to the remote

`git commit` you're gonya be taken to a file, edit it with your commit message, save and exit
`git push` asks for username + pwd

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

,,git
,,software
,,coding