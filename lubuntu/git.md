## install
`sudo apt install git`

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