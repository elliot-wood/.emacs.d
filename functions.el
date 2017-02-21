;;;; ==  F U N C T I O N S ==

;;

(defun delete-current-buffer-file ()
  "Removes file connected to current buffer, kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
	(buffer (current-buffer))
	(name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
	(ido-kill-buffer)
      (when (yes-or-no-p "Are you sure you want to delete this file? ")
	(delete-file filename)
	(kill-buffer buffer)
	(message "File '%s' successfully deleted" filename)))))

(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

;;
