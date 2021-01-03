(defpackage house-prices/tests/main
  (:use :cl
        :house-prices
        :rove))
(in-package :house-prices/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :house-prices)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
