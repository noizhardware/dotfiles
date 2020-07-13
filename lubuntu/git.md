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
