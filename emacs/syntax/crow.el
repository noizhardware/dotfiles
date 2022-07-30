;; create the list for font-lock.
;; each category of keyword is given a particular face
(setq crow-font-lock-keywords
      (let* (
            ;; define several category of keywords
            (x-keywords '("dd" "uu" "mu" "qq"))
            (x-types '("u" "l"))
            (x-constants '("DC"))
            (x-events '("at_rot_target" "at_target" "attach"))
            (x-functions '("ps" "xx" "don" "dof" "sin" "sar" "saf" "m" "a" "s" "d" "out" "o1" "tc" "abs" "r" "ptt" "sme" "sbb" "pp"))

            ;; generate regex string for each category of keywords
            (x-keywords-regexp (regexp-opt x-keywords 'words))
            (x-types-regexp (regexp-opt x-types 'words))
            (x-constants-regexp (regexp-opt x-constants 'words))
            (x-events-regexp (regexp-opt x-events 'words))
            (x-functions-regexp (regexp-opt x-functions 'words)))

        `(
          (,x-types-regexp . 'font-lock-type-face)
          (,x-constants-regexp . 'font-lock-constant-face)
          (,x-events-regexp . 'font-lock-builtin-face)
          (,x-functions-regexp . 'font-lock-function-name-face)
          (,x-keywords-regexp . 'font-lock-keyword-face)
          ;; note: order above matters, because once colored, that part won't change.
          ;; in general, put longer words first
          )))

;;;###autoload
(define-derived-mode crow-mode c-mode "crow mode"
  "Major mode for editing crow blindmode lang"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((crow-font-lock-keywords))))

;; add the mode to the `features' list
(provide 'crow-mode)

;; set file extension
(add-to-list 'auto-mode-alist '("\\.cro\\'" . crow-mode))


