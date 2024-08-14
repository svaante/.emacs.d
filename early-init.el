(require 'org)

(org-babel-tangle-file
 (locate-user-emacs-file "config.org")
 (locate-user-emacs-file "init.el"))
