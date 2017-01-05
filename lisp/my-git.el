(my-install-packages '(magit gist))

;; homebrew git version's path
;; (add-to-list 'load-path "/usr/local/share/git-core/contrib/emacs")

;;(require 'git)
;; (load-file "/usr/local/share/git-core/contrib/emacs/git.el")

;; (require 'git-blame)

(require 'magit)
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

(require 'gist)
