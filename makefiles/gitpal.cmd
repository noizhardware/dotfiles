:: gitpal = GIT Push All Local
set COMMENT=%1
git add --all
git commit -m %COMMENT%
:: OLD: in vi:
:: - press `i`, now you can type your comment
:: - when you're done, press `Esc`
:: - save and exit, using `:x` or `:wq` (it's the same)