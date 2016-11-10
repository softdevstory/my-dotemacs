(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(defvar need-refresh-package-contents t)
(defun check-and-refresh-package-contents ()
  (if need-refresh-package-contents
      (progn
	(setq need-refresh-package-contents t)
	(package-refresh-contents))))

(defun my-install-packages (arg)
  (dolist (p arg)
    (when (not (package-installed-p p))
      (progn
	(check-and-refresh-package-contents)
	(package-install p)))))
