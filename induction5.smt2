; Proving that f(x) != x then f^n(x) != x^n
(set-logic ALL)

(declare-fun f (Int) Int)
(declare-fun pot (Int Int) Int)
;(assert (forall ((x Int) (n Int)) (= (pot x (+ n 1)) (* (pot x n) x))))
(assert (forall ((x Int)) (= (pot x 0) x)))
(assert (forall ((x Int) (n Int)) (= (pot x (+ n 1)) (f (pot x n)))))

; f( pot x n )

(assert (forall ((x Int)) (not (= (f x) x))))
(assert (exists ((c Int) (i Int)) (and (>= i 0) (= (pot c i) c))))

(check-sat)

; f(x) = s(x)