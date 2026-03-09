- diff 2 files
diff filename1 filename2

- diff 2 pieces of pasted text, diff by lines
git diff --no-index --word-diff <(echo "ciaooo") <(echo "ciaoooporcodio")

- diff 2 pieces of pasted text, diff by characters, displayed in plain or in color
git diff --no-index --word-diff=plain --word-diff-regex=. <(echo "ciaooo") <(echo "ciaoooporcodio")
git diff --no-index --word-diff=color --word-diff-regex=. <(echo "ciaooo") <(echo "ciaoooporcodio")
