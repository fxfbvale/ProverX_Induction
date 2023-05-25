; Proving that inv(x) ^ 2k = x
(set-logic ALL)

(declare-fun f (Int) Int)
(declare-fun pot (Int Int) Int)
(declare-fun inv (Int) Int)
(declare-fun m () Int)
(assert (= (- 0 1) m))
;(assert (forall ((x Int) (n Int)) (= (pot x (+ n 1)) (* (pot x n) x))))
(assert (forall ((x Int)) (= (pot x 0) x)))
(assert (forall ((x Int) (n Int)) (= (pot x (+ n 1)) (f (pot x n)))))
(assert (forall ((x Int) (y Int) (n Int)) (=> (= (f x) y) (= (pot y m) x))))

; f( pot x n )

;(assert (forall ((x Int) (n Int)) (=> (= (f x) x) (= (pot (f x) (+ n 1)) x))))
(assert (exists ((c Int) (i Int) (k Int)) (and (and (>= k 0)(= i (* 2 k))) (not (= (inv c) c) ))))
(check-sat)
