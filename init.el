
(add-to-list 'load-path "~/.emacs.d/lisp")

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

;; package management
(load-library "my-cask")

;; load other configurations
(load-library "my-git")

