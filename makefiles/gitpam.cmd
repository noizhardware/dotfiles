:: gitpa = GIT Push All Message
set COMMENT=%1
git add --all
:: use as `gitpam "my multiple words message"`
:: or as `gitpam singlewordmessage`
git commit -m %COMMENT%
:: OLD in vi:
:: - press `i`, now you can type your comment
:: - when you're done, press `Esc`
:: - save and exit, using `:x` or `:wq` (it's the same)
git push origin master