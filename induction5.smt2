; Proving that f(x) != x then f^n(x) != x^n
(set-logic ALL)

(declare-fun f (Real) Real)
(declare-fun x () Real)
(declare-fun n () Real)
(declare-fun pot (Real Real) Real)
(assert (= (pot x 0.0) 1.0))
(assert (forall ((x Real) (n Real)) (= (pot x (+ n 1.0)) (* (pot x n) n))))
(assert (forall ((x Real)) (= (pot (f x) (+ n 1.0)) (pot (f (f x)) n))))
(assert (forall ((x Real)) (= (f x) x)))

(assert (forall ((x Real)) (=> (not (= (f x) x)) (not(= (pot (f x) n) x)))))

(check-sat)
