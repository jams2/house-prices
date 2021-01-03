(defpackage house-prices
  (:use :cl :iterate :cl-csv))
(in-package :house-prices)

(defvar *package-root* (namestring (asdf:system-source-directory :house-prices)))
(defvar *package-data-dir* (concatenate 'string *package-root* "data/"))
(defvar *transaction-data-file* (concatenate 'string *package-data-dir* "transactions.csv"))
(defvar *column-names* '(transaction-id
			 price
			 date
			 postcode
			 property-type
			 is-newbuild
			 duration
			 paon
			 saon
			 street
			 locality
			 town-or-city
			 district
			 county
			 ppd))

(setf *transaction-data-file*
      (concatenate 'string *package-data-dir* "transactions-trunc.csv"))

(defmacro iter-with-column-names (&rest forms)
  `(iter (for ,*column-names* in-csv (probe-file *transaction-data-file*))
     ,@forms))

(defclass transaction ()
  (transaction-id
   :initarg :transaction-id
   :accessor transaction-id)
  )
