(my-install-packages '(color-theme zenburn sublime-themes dracula-theme))

(load-theme 'dracula t)
;;(require 'zenburn)
;;(zenburn)

;;(require 'sublime-themes)
;;(load-theme 'spolsky t)

(cond
 ((find-font (font-spec :name "Menlo")) ;; for mac OS
  (set-frame-font "Menlo"))
  ((find-font (font-spec :name "Consolas")) ;; for Windows
   (set-frame-font "Consolas"))
  ((find-font (font-spec :name "DejaVu Sans Mono")) ;; for Linux
   (set-frame-font "DejaVu Sans Mono")))

