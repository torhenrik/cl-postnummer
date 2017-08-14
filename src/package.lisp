(defpackage #:cl-postnummer
  (:documentation
   "Package with functions to parse and query norwegian postnummer.")
  (:use #:cl #:cl-ppcre)
  (:export #:get-poststed))
