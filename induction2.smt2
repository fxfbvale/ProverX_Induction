; Proving that a=b => a^n = b^n
(set-logic ALL)

;definição da potencia
(declare-fun pot (Int Int) Int)
(assert (forall ((a Int)) (= (pot a 0) 1)))
(assert (forall ((a Int) (n Int)) (= (pot a (+ n 1)) (* (pot a n) a))))

;(assert (forall ((a Int) (b Int) (n Int)) (=> (= a b) (= (pot a 0) 1))))
;(assert (forall ((a Int) (b Int) (n Int)) (=> (= a b) (= (pot a 1) b))))
;(assert (forall ((a Int) (b Int) (n Int)) (=> (= a b) (= (pot a (+ n 1)) (* (pot b n) a)))))

; -> encontra contra exemplo
(assert (exists ((c Int) (d Int) (i Int)) (and (= c d) (not (= (pot c i) (pot d i))))))

(check-sat)
