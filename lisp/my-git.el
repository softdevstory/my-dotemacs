;; homebrew git version's path
(add-to-list 'load-path "/usr/local/share/git-core/contrib/emacs")

;;(require 'git)
(load-file "/usr/local/share/git-core/contrib/emacs/git.el")

(require 'git-blame)

(require 'magit)
