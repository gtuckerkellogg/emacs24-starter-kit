
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(add-hook 'after-init-hook
 `(lambda ()
    ;; remember this directory
    (setq starter-kit-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))
    ;; only load org-mode later if we didn't load it just now
    ,(unless (and (getenv "ORG_HOME")
                  (file-directory-p (expand-file-name "lisp"
                                                      (getenv "ORG_HOME"))))
       '(require 'org))
    (org-babel-load-file (expand-file-name "starter-kit.org" starter-kit-dir))))

(run-hooks 'after-init-hook)
(message "reloading Org %s" org-version)
(org-reload)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;; init.el ends here








(put 'dired-find-alternate-file 'disabled nil)
