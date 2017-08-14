(in-package :postnummer)

(defvar *postnummer-poststed*
  (with-open-file (in (asdf:system-relative-pathname :postnummer "Postnummerregister_utf8.txt"))
    (let ((hash (make-hash-table)))
      (loop for line = (read-line in nil)
         while line
         do (destructuring-bind (postnummer poststed kommunekode kommunenavn kategori)
                (cl-ppcre:split '(:sequence #\Tab) line )
              (declare (ignore kommunekode kommunenavn kategori))
              (setf (gethash (parse-integer postnummer) hash) poststed)))
      hash)))

(defun get-poststed (postnummer)
  (gethash (if (stringp postnummer)
               (parse-integer postnummer)
               postnummer)
           *postnummer-poststed*))

