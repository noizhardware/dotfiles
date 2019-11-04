sudo apt-get install sbcl
curl -o /tmp/ql.lisp http://beta.quicklisp.org/quicklisp.lisp
sbcl --no-sysinit --no-userinit --load /tmp/ql.lisp \
       --eval '(quicklisp-quickstart:install :path "~/.quicklisp")' \
       --eval '(ql:add-to-init-file)' \
       --quit
sbcl --eval '(ql:quickload :quicklisp-slime-helper)' --quit

sudo apt install emacs25
sudo apt install emacs25-nox
sudo apt install e3
sudo apt install emacs25-lucid
sudo apt install jove
