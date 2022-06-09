
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(global-set-key "\C-xf" 'recentf-open-files)

(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

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


(setq auto-mode-alist (append '(("\\.h$"  . c++-mode))auto-mode-alist))
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

(setq auto-mode-alist (append '(("\\.js$"  . js-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.jsx$"  . js-mode))auto-mode-alist))
(setq auto-mode-alist (append '(("\\.json$"  . js-mode))auto-mode-alist))





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
                    (setq initial-frame-alist '((width . 120) (height . 60)))
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


(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer
        (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1))


(setq-default save-place t)
;;; enable saveplace
(if (and (>= emacs-major-version 25) (>= emacs-minor-version 1))
        (progn (require 'saveplace) (save-place-mode 1))
    )
    


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



(setq markdown-command "multimarkdown")
(global-set-key "\C-c\C-c\C-p" 'markdown-command)


(add-to-list 'load-path "~/elisp")

(autoload 'lua-mode-2011 "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(setq lua-indent-level 2)

;;(add-hook 'lua-mode-hook 
;;          (lambda () (unless (fboundp 'lua-calculate-indentation-right-shift-next)
;;                       (load-file (locate-file "my-lua.el" load-path)))))





(setq-default c-basic-offset 4)




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "LightGray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "apple" :family "Monaco")))))

(if (display-graphic-p)
(when (>= emacs-major-version 23)
 (set-face-attribute 'default nil
                     :family "monaco"
                     :height 110)
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
        ("-cdac$" . 1.3))))     )

(define-key global-map [?¥] [?\\])  ;; for mac backslash


(defun electric-pair ()
  "If at end of line, insert character pair without surrounding spaces.
   Otherwise, just insert the typed character."
  (interactive)
  (if (eolp) (let (parens-require-spaces) (insert-pair)) 
    (self-insert-command 1)))

(add-hook 'c-mode-common-hook
          (lambda ()
            (define-key c-mode-map "\"" 'electric-pair)
            (define-key c-mode-map "\'" 'electric-pair)
            (define-key c-mode-map "(" 'electric-pair)
            (define-key c-mode-map "[" 'electric-pair)
            (define-key c-mode-map "{" 'electric-pair)))    

(add-hook 'lua-mode-hook
          (lambda ()
            (define-key lua-mode-map "\"" 'electric-pair)
            (define-key lua-mode-map "\'" 'electric-pair)
            (define-key lua-mode-map "(" 'electric-pair)
            (define-key lua-mode-map "[" 'electric-pair)
            (define-key lua-mode-map "{" 'electric-pair)))    

(if (boundp 'electric-pair-mode)
 (electric-pair-mode))




(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.

This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)



(add-hook 'js-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
