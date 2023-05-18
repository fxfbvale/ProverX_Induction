; Proving that f(x) = x => f^n(x) = x
(set-logic ALL)

(declare-fun f (Int) Int)
(declare-fun pot (Int Int) Int)
;(assert (forall ((x Int) (n Int)) (= (pot x (+ n 1)) (* (pot x n) x))))
(assert (forall ((x Int)) (= (pot x 0) x)))
(assert (forall ((x Int) (n Int)) (= (pot x (+ n 1)) (f (pot x n)))))

; f( pot x n )

;(assert (forall ((x Int) (n Int)) (=> (= (f x) x) (= (pot (f x) (+ n 1)) x))))
(assert (forall ((x Int)) (= (f x) x))) ; f é identidade
(assert (exists ((c Int) (i Int)) (and (>= i 0)(not (= (pot c i) c)))))

(check-sat)

; f(x) = s(x)
