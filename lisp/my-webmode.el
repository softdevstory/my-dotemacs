(require 'web-mode)


(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

(add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
(add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
(add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
(add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil))
(add-to-list 'web-mode-indentation-params '("case-extra-offset" . nil))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (local-set-key (kbd "RET") 'newline-and-indent)

  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)

  (setq web-mode-style-padding 4)
  (setq web-mode-script-padding 4)

  (setq indent-tabs-mode nil)

  (add-hook 'local-write-file-hooks (lambda () (delete-trailing-whitespace) nil))

;   (infer-indentation-style)

;  (setq web-mode-block-padding 0)
;  (setq web-mode-comment-style 2)
)

(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(add-hook 'web-mode-hook  'my-web-mode-hook)

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))
