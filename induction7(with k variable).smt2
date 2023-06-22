(set-logic ALL)
; Assumptions
(declare-sort S 0)
(declare-fun m (S S) S)
(assert (forall ((x S) (y S) (z S)) (= (m (m x y) z) (m x (m y z))))) ; associativity

(declare-fun pot (S Int) S)
(assert (forall ((x S)) (= (pot x 1) x)))
(assert (forall ((x S) (n Int)) (=> (>= n 0) (= (pot x (+ n 1)) (m (pot x n) x)))))

; S is finite
;(declare-const n Int)
;(declare-const k Int)
;(assert (> n 0))
;(assert (> k 0))
;(assert (forall ((x S)) (= (pot x (+ n k)) (pot x n))))

;(assert (exists ((n Int) (k Int)) (forall ((x S)) (= (pot x (+ n k)) (pot x n)))))
;(assert (exists ((n Int) (k Int)) (forall ((x S)) (and (> n 0) (and (> k 0) (= (pot x (+ n k)) (pot x n)))) )))


(declare-const n Int)
(assert (= n 2))
;(assert (forall ((x S)) (= (pot x (+ n k)) (pot x n))))


(assert (exists ((k Int)) (and (> k 0) (forall ((x S))  (= (pot x (+ n k)) (pot x n)))) ))



; Goals
;(assert (exists ((e S)) (= (m e e) e)))

;(assert (forall ((e S)) (not (= (m e e) e))))

;(assert (forall ((e S)) (not (= (pot e 2) e))))

;(assert (forall ((e S)) (exists ((p Int)) (= (pot e p) (m (pot e p) (pot e p)) )))) ;idempotencia

(assert ( not (forall ((e S)) (exists ((p Int)) (= (pot e p) (m (pot e p) (pot e p)) ))))) ;idempotencia


;(assert (forall ((e S)) (not (= (pot e p) e))))


(check-sat)