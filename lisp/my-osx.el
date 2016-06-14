;; Mac OS X Encodings

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; New line
;;(set-buffer-file-coding-system nil)
(setq inhibit-startup-echo-area-message t)

(when window-system
  ;; Command key is meta key
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)

  ;; font option
  (setq fixed-width-use-QuickDraw-for-ascii t)
  (setq mac-allow-anti-aliasing t)
  (setq-default line-spacing 1)
  
  ;;(set-face-font 'default "Menlo-12")
  (set-face-attribute 'default nil
		      :family "Menlo"
		      :width 'normal
		      :height 120)

  ;; korean font
  (set-fontset-font (frame-parameter nil 'font)
		    '(#x1100 . #xffdc)
		    '("Apple SD Gothic Neo" . "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
		    'hangul
		    '("Apple SD Gothic Neo" . "iso10646-1"))
  )

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
