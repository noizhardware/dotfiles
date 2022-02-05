REM gitpa = GIT Push All Message
git add --all
REM default comment, assuming I'm pushing from "ninja"
git commit
REM in vi:
REM - press `i`, now you can type your comment
REM - when you're done, press `Esc`
REM - save and exit, using `:x` or `:wq` (it's the same)
git push origin master