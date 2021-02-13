(require 'cask "/root/.cask/cask.el")
;;(cask-initialize)

(setq org-roam-directory "/root/org")

(setq org-roam-dailies-directory "daily/")

(setq org-roam-dailies-capture-templates
      '(("d" "default" entry
         #'org-roam-capture--get-point
         "* %?"
         :file-name "daily/%<%Y-%m-%d>"
         :head "#+title: %<%Y-%m-%d>\n\n")))

(require `org-roam-dailies)
