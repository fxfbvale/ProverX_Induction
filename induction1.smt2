; Proving that a^n = a^n
(set-logic ALL)

; (declare-fun a () Int)
; (declare-fun n () Int)
(declare-fun pot (Int Int) Int)
; (assert (forall ((a Int)) (= (pot a 0.0) 1.0)))

; (assert (forall ((a Int) (n Int)) (= (pot a 0) 1))) ->  if I keep this one it will refutate
(assert (forall ((a Int) (n Int)) (= (pot a 1) a)))
(assert (forall ((a Int) (n Int)) (= (pot a (+ n 1)) (* (pot a n) a))))

; (assert (forall ((a Int) (n Int)) (= (pot a n) (pot a n))))
; ?? -> how can I represent the negative withou being too obvious
; (assert (exists ((c Int) (i Int)) (not (= (pot c i) (pot c i)))))

(check-sat)
