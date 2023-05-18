(set-logic ALL)

(declare-fun f (Real) Real)
(declare-fun inv (Real) Real)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun n () Real)
(declare-fun pot (Real Real) Real)
(assert (forall ((x Real) (n Real)) (= (pot x (+ n 1.0)) (* (pot x n) n))))
(assert (forall ((x Real)) (= (pot (f x) (+ n 1.0)) (pot (f (f x)) n))))

(assert (forall ((x Real) (y Real)) (=> (= (f x) y) (= (inv (f y)) x))))

(declare-fun k () Int)

(assert (forall ((x Real) (k Int)) (=> (= (f x) x) (= (pot (inv (f x)) (* k 2)) x))))
(assert (exists ((x Real) (k Int)) (and (= (f x) x) (not (= (pot (inv (f x)) (* k 2)) x)))))

(check-sat)


;----------------------------------------------------------------------------------------------

; Proving that inv(x) ^ 2k = x
(set-logic ALL)

(declare-sort S 0)
(declare-fun f (S) S)
(declare-fun inv (S) S)
(declare-fun x () S)
(declare-fun y () S)
(declare-fun n () S)
(declare-fun mult (S S) S)
(declare-fun add (S S) S)
(declare-fun pot (S S) S)

(assert (forall ((x S) (n S)) (= (pot x (add n 1)) (mult (pot x n) n))))
(assert (forall ((x S)) (= (pot (f x) (add n 1)) (pot (f (f x)) n))))

(assert (forall ((x S) (y S)) (=> (= (f x) y) (= (inv (f y)) x))))

(declare-fun k () Int)

(assert (forall ((x S) (k Int)) (=> (= (f x) x) (= (pot (inv (f x)) (mult k 2)) x))))
(assert (exists ((x S) (k Int)) (and (= (f x) x) (not (= (pot (inv (f x)) (mult k 2)) x)))))

(check-sat)
