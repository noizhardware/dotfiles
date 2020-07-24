## add a local folder to a repo with a different name (keeping the local folder's name)
* create an empty repo from the github website
* run gitBash as administrator
`git config --global user.email "mymail@gmail.com"`
`git config --global user.name "mygithubusername"`
* go into your local folder:
`git init`
`git add .`
`git commit /m "my commit message"`
`git remote add origin https://github.com/username/repoName`
`git remote -v`
`git push -f origin master`
`git status`

---

`git config --global user.name "username"`
you need to actually use double quotes around the username

`git status` to check the status of the repo you're in now

## Pull
To pull remote changes:
* go in local repo directory
`git pull`

## Push
To push local changes:
`git add --all` tkes care of locally removed files, will remove on remote as well
`git add .` new local files will be added to remote, local removed files will not be removed from remote
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