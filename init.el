
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; package management
(load-library "my-package")

;; no backup file
(setq make-backup-files nil)
      
;; system-type
;;  `gnu'          compiled for a GNU Hurd system.
;;  `gnu/linux'    compiled for a GNU/Linux system.
;;  `gnu/kfreebsd' compiled for a GNU system with a FreeBSD kernel.
;;  `darwin'       compiled for Darwin (GNU-Darwin, Mac OS X, ...).
;;  `ms-dos'       compiled as an MS-DOS application.
;;  `windows-nt'   compiled as a native W32 application.
;;  `cygwin'       compiled using the Cygwin library.
(cond
 ((eq system-type 'darwin) (load-library "my-osx")))

(load-library "my-ido")

;; load other configurations
(load-library "my-git")
;; (load-library "my-subversion")

(load-library "my-jekyll")

;; (load-library "my-flycheck")
(load-library "my-webmode")

(load-library "my-theme")

(load-library "my-neotree")
(load-library "my-projectile")
(load-library "my-helm")

(load-library "my-multiple-cursors")

(load-library "my-dash")
