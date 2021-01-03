(defsystem "house-prices"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (:iterate :cl-csv)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "house-prices/tests"))))

(defsystem "house-prices/tests"
  :author ""
  :license ""
  :depends-on ("house-prices"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for house-prices"
  :perform (test-op (op c) (symbol-call :rove :run c)))
