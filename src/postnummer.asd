(asdf:defsystem #:postnummer
  :description "Postnummer"
  :author "Tor Henrik Hanken <torhenrik@gmail.com>"
  :license "GPL-2.0"
  :depends-on (#:cl-ppcre
               )
  :serial t
  :components ((:file "package")
               (:file "postnummer")))


