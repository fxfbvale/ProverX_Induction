(set-logic ALL)


(declare-fun f (Int) Int)
(assert (= (f 0) 0))
(assert (forall ((i Int)) (=> (<= 0 i) (= (f (+ i 1)) (+ (f i) (+ i 1)) ) ) ))
(assert (exists ((c Int)) (and (>= c 0) (not (= (* (f c) 2) (* c (+ c 1)))))))

(check-sat)
