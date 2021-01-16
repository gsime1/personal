
;; additional packages

(defvar myPackages
  '(ein                ;; Emacs iPython Notebook
    company-jedi       ;; Better autocompletion
    py-autopep8        ;; Run autopep8 on save
    virtualenvwrapper  ;; Virtualenv inside Emacs
    )
  )

(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)

(require 'py-autopep8)
(add-hook 'anaconda-mode-hook 'py-autopep8-enable-on-save)

(require 'jedi)
(add-hook 'anaconda-mode-hook 'jedi:setup)


;; ALIASES

(defalias 'workon 'venv-workon)
