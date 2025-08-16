;; in your ~/.emacs file, put (load-file "R:/Work/git/dotfiles/emacs/init.el")
;; POWERCODIO!!!
;; themes
(add-to-list 'custom-theme-load-path "R:/Work/git/dotfiles/emacs/themes/")
;;(load "R:/Work/git/dotfiles/emacs/themes/graham-theme.el")
(load-theme 'graham t) ;; file MUST be named themename-theme.el
;;(load-theme 'dracula t)

;; other settings
(add-hook 'emacs-startup-hook 'toggle-frame-maximized) ;; always start up full-screen
(global-display-line-numbers-mode) ;; display line numbers
(global-tab-line-mode) ;; show tabs with currently open files
(setq inhibit-startup-message t);; no startup message
(setq visible-bell t) ;; flashing window on error

(require 'recentf) ;; open last opened file at startup
(recentf-mode 1)
(add-hook 'after-init-hook
           (lambda ()
             (recentf-open-most-recent-file 1)) t)

;; `copy` and `cut` will act on the entire line when no region is active
    (defun my-kill-ring-save (beg end flash)
      (interactive (if (use-region-p)
                       (list (region-beginning) (region-end) nil)
                     (list (line-beginning-position)
                           (line-beginning-position 2) 'flash)))
      (kill-ring-save beg end)
      (when flash
        (save-excursion
          (if (equal (current-column) 0)
              (goto-char end)
            (goto-char beg))
          (sit-for blink-matching-delay))))
    (global-set-key [remap kill-ring-save] 'my-kill-ring-save)

;; some useful functions
(defun new-empty-buffer ()
  "Opens a new empty buffer."
  (interactive)
  (switch-to-buffer (generate-new-buffer "untitled"))
  (funcall initial-major-mode)
  (put 'buffer-offer-save 'permanent-local t)
  (setq buffer-offer-save t)
  (org-mode))
(defun open-cmd-exe ()
  (let ((proc (start-process "cmd" nil "cmd.exe" "/C" "start" "cmd.exe")))
    (set-process-query-on-exit-flag proc nil)))

;; PROJECT EXPLORER SIDEBAR
(add-to-list 'load-path (expand-file-name "R:/Work/git/dotfiles/emacs/es-lib"))
(add-to-list 'load-path (expand-file-name "R:/Work/git/dotfiles/emacs/es-windows"))
(load-file "R:/Work/git/dotfiles/emacs/es-lib/es-lib.el")
(load-file "R:/Work/git/dotfiles/emacs/project-explorer.el")
(defun pe/project-root-function-sample ()(expand-file-name "R:/LOGS"))
(setq pe/project-root-function 'pe/project-root-function-sample)
(setq pe/width 10)
(setq pe/omit-enabled nil)
(project-explorer-open)


;(add-to-list 'load-path (expand-file-name "R:/Work/git/dotfiles/emacs/dired-sidebar"))
;(add-to-list 'load-path (expand-file-name "R:/Work/git/dotfiles/emacs/dired-hacks"))
;(require 'dired-sidebar)
;(dired-sidebar-toggle-sidebar)

;; KEYBINDINGS
(defun key-unbind (k)
  (global-unset-key (kbd k)))
(defun key-bind (k f)
  (global-set-key (kbd k) f))
(defun key-rebind (k f)
  (key-unbind k)
  (key-bind k f))
;;;;;;;;;
(key-rebind "C-q" 'save-buffers-kill-terminal) ;; safely quit emacs
(key-rebind "C-n" 'new-empty-buffer)
;;(key-rebind "M-e" (lambda() (interactive)(find-file "~/.emacs")))
(key-rebind "M-i" (lambda() (interactive)(find-file "R:/Work/git/dotfiles/emacs/init.el")))
(key-rebind "C-w" 'kill-this-buffer)
(key-rebind "C-1" (lambda() (interactive)(open-cmd-exe))) ;; open cmd.exe terminal in separate window
(key-rebind "C-s" 'save-buffer)
	(key-unbind "C-x s")
(key-rebind "TAB" 'self-insert-command)
(key-rebind "C-f" 'isearch-forward)
(key-rebind "C-c" 'kill-ring-save)
	(key-unbind "M-w")
(key-rebind "C-v" 'clipboard-yank)
	(key-unbind "C-y")
(key-rebind "C-x" 'kill-region)
	(key-unbind "S-<delete>")

(key-rebind "C-z" 'undo-only)
	;;(key-unbind "C-x C-u")
	(key-unbind "C-_")
(key-rebind "C-y" 'undo-redo)

(key-rebind "C-o" 'find-file)

(key-rebind "C-<next>" 'next-buffer) ;; PgDn
(key-rebind "C-<prior>" 'previous-buffer) ;; PgUp

;; have your emacs window to always show your system-name and the full
;; path of the buffer you're currently editing :
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; SYNTAX
(load-file "R:/Work/git/dotfiles/emacs/syntax/crow.el")

