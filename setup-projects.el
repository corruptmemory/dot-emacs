(defun kickass-project ()
  (interactive)
  (cd "~/patch_projects/kickass")
  (find-file "~/patch_projects/kickass/Capfile")
  (helm-eproject))

(defun kickass-project-build ()
  (interactive)
  (find-file "~/patch_projects/kickass/project/Build.scala"))

(defun patch-config-project ()
  (interactive)
  (cd "~/patch_projects/patch-config")
  (find-file "~/patch_projects/patch-config/play_start.sh")
  (helm-eproject))

(provide 'setup-projects)
