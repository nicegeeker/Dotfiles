;;; packages.el --- my-emoji layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Xu Yi-qun <sat@Xus-MacBook-Air.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `my-emoji-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `my-emoji/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `my-emoji/pre-init-PACKAGE' and/or
;;   `my-emoji/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst my-emoji-packages
  '(
    emojify
    unicode-fonts
    )
  "The list of Lisp packages required by the my-emoji layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")
(defun my-emoji/init-emojify ()
  (use-package emojify
    :defer t
    :init
    (global-emojify-mode)
    (setq emojify-display-style 'image)
    (setq emojify-emojis-dir "~/.spacemacs.d/layers/my-emoji/emojis/")
    ;; (setq emojify-user-emojis '((":trollface:" . (("name" . "Troll Face")
    ;;                                                ("image" . "~/.spacemacs.d/emojis/trollface.png")
    ;;                                              ("style" . "github")))
    ;;                             (":neckbeard:" . (("name" . "Neckbeard")
    ;;                                               ("image" . "~/.spacemacs.d/emojis/neckbeard.png")
    ;;                                               ("style" . "github")))))

    ;; If emojify is already loaded refresh emoji data
    ;; (when (featurep 'emojify)
    ;; (emojify-set-emoji-data))
    )
)


(defun my-emoji/init-unicode-fonts ()
  "docstring"
  (use-package unicode-fonts
    :defer t
    :init
    (unicode-fonts-setup)
    )
  )


;;; packages.el ends here
