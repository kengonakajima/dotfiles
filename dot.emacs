(setq load-path
      (append
       (list
       (expand-file-name "~/elisp/")
       )
       load-path))


(defun my-scroll-up () ""
  (interactive)
  (condition-case ()
  (scroll-up)
  	    (error (goto-char (point-max)))))

(defun my-scroll-down () ""
  (interactive)
  (condition-case ()
  (scroll-down)
  	    (error (goto-char (point-min)))))



(global-set-key "\C-h" 'backward-delete-char)
(global-set-key ""   'backward-delete-char)
(global-set-key "\C-x\C-z" 'suspend-emacs)
(global-set-key "\C-xg" 'grep)

;;(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key "\C-x\C-b"  (lambda () (interactive) (buffer-menu t)))
(global-set-key "\C-x\C-m" 'compile)
(global-set-key "\C-m" 'compile)
(global-set-key "\C-c/" 'indent-region)
(global-set-key "\M-m"     'man)
(global-set-key "\C-o"     'compile-goto-error)
(global-set-key "\C-n"     'next-line)
(global-set-key "\C-z"     'scroll-down)
(global-set-key "\M-g"     'goto-line)
(global-set-key "\C-i"     'dabbrev-expand)
(global-set-key "\C-m"     'newline-and-indent)
(global-set-key "\C-v" 'my-scroll-up)
(global-set-key "\C-z" 'my-scroll-down)
(global-set-key "\C-xf" 'mas-list-file-history)

;;
;; C mode config
;;
;; c-mode
(setq c-site-default-style "bsd")

;;(setq c-default-style "k&r")
;; smarter BackSpace 
(add-hook 'c-mode-common-hook
            '(lambda ()
             (progn
               (c-toggle-hungry-state 1)
               (setq c-basic-offset 4 indent-tabs-mode nil))))

(setq default-tab-width 4)
(setq-default tab-width 4 indent-tabs-mode nil)

(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))


(setq auto-mode-alist (append '(("\\.h$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.c$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.cu$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.m$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.mm$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.cs$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.go$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.as"  . c-mode))auto-mode-alist))

(setq auto-mode-alist (append '(("\\.cpp$"  . c++-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.ispc$"  . c++-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.lvm$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.nut$"  . c-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.rdl$"  . ruby-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.coffee$"  . coffee-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.tmpl$"  . html-mode))auto-mode-alist))

(setq auto-mode-alist (append '(("\\.js$"  . js2-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.json$"  . js2-mode))auto-mode-alist))





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(if (string="root" (getenv "USER") )
    (custom-set-faces
     '(default ((t (:stipple nil :background "Black" :foreground "LightGray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :family "apple-monaco")))))
    (custom-set-faces
     '(default ((t (:stipple nil :background "#122" :foreground "LightGray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :family "apple-monaco")))))
  )

(if window-system (progn
                    (setq initial-frame-alist '((width . 150) (height . 60)))
                    (set-background-color "Black")
                    (set-foreground-color "LightGray")
                    (set-cursor-color "Gray")
                    ))
  



;; i dont need backup
(setq make-backup-files nil)


(setq load-path
      (append
       (list
       (expand-file-name "~/elisp/")
       )
       load-path))


(setq mas-file-history-emacs-start-autoload-registered-files t)
(load-library "mas-file-history")

(require 'syntax)
(require 'go-mode-load)

;; for org
;; The following lines are always needed.  Choose your own keys.
     (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)
     (global-set-key "\C-ci" 'dabbrev-expand)

     (global-set-key "\M-[Z" 'org-global-cycle)
     (setq org-log-done 'time)
     (setq org-log-done 'note)



(defun xcode:buildandrun ()
 (interactive)
 (do-applescript
  (format
   (concat
    "tell application \"Xcode\" to activate \r"
    "tell application \"System Events\" \r"
    "     tell process \"Xcode\" \r"
    "          key code 36 using {command down} \r"
    "    end tell \r"
    "end tell \r"
    ))))


(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)

(global-set-key "\C-xm" 'compile)


(setq undo-limit 100000)
(setq undo-strong-limit 130000)

;;(add-hook 'lua-mode-hook 
;;          (lambda () (unless (fboundp 'lua-calculate-indentation-right-shift-next)
;;                       (load-file (locate-file "my-lua.el" load-path)))))


                       
(add-to-list 'load-path "~/elisp")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(setq lua-indent-level 2)


(setq-default c-basic-offset 4)

;; (when (load "js2" t)
;;   (setq js2-cleanup-whitespace nil
;;         js2-mirror-mode nil
;;         js2-bounce-indent-flag nil)

;;   (defun indent-and-back-to-indentation ()
;;     (interactive)
;;     (indent-for-tab-command)
;;     (let ((point-of-indentation
;;            (save-excursion
;;              (back-to-indentation)
;;              (point))))
;;       (skip-chars-forward "\s " point-of-indentation)))
;; ;;  (define-key js2-mode-map "\C-i" 'indent-and-back-to-indentation)

;;   (define-key js2-mode-map "\C-m" nil)

;;   (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode)))


(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

(autoload 'js2-mode "js2" nil t)
(add-hook 'js2-mode-hook
          #'(lambda ()
              (require 'espresso)
              (setq espresso-indent-level 2
                    espresso-expr-indent-offset 2
                    indent-tabs-mode nil)
              (set (make-local-variable 'indent-line-function) 'espresso-indent-line)))

                                                                                            
;;(add-hook 'js2-mode-hook
;;          #'(lambda ()
;;              (require 'js)
;;              (setq js-indent-level 4
;;                    js-expr-indent-offset 4
;;                    indent-tabs-mode nil)
;;              (set (make-local-variable 'indent-line-function) 'js-indent-line)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "LightGray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "apple" :family "Monaco")))))

(when (>= emacs-major-version 23)
 (set-face-attribute 'default nil
                     :family "monaco"
                     :height 140)
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0208
  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0212
  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'mule-unicode-0100-24ff
  '("monaco" . "iso10646-1"))
 (setq face-font-rescale-alist
      '(("^-apple-hiragino.*" . 1.2)
        (".*osaka-bold.*" . 1.2)
        (".*osaka-medium.*" . 1.2)
        (".*courier-bold-.*-mac-roman" . 1.0)
        (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
        (".*monaco-bold-.*-mac-roman" . 0.9)
        ("-cdac$" . 1.3))))
