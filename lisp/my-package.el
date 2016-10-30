(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(defun my-install-packages (arg)
  (dolist (p arg)
    (when (not (package-installed-p p))
      (package-install p))))
