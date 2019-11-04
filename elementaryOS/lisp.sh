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

sudo apt update
sudo apt-get update


# ---------------
sudo -i
sudo apt-get install sbcl
sudo curl -o /tmp/ql.lisp http://beta.quicklisp.org/quicklisp.lisp
sudo curl -o /tmp/ql.lisp http://beta.quicklisp.org/quicklisp.lisp
sudo sbcl --no-sysinit --no-userinit --load /tmp/ql.lisp
# then evaluate (quicklisp-quickstart:install) as asked
# then also evaluate:
# (quicklisp-quickstart:install :path "~/.quicklisp")
# (ql:add-to-init-file)
# (quit)
sudo sbcl --eval '(ql:quickload :quicklisp-slime-helper)' --quit
sudo nano .emacs
# paste this into the file:
# (load (expand-file-name "~/.quicklisp/slime-helper.el"))
# (setq inferior-lisp-program "sbcl")
# save and exit: Ctrl+O, Enter, Ctrl+X
sudo emacs
# ok, now you press Alt+X, and then type "slime", Enter
# congrats you're in the REPL, enjoy LISP!
# to open emacs, always do it from the root;
# sudo -i
# emacs
