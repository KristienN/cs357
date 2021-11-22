;example 1
(declare-fun a() Bool)
(declare-fun b() Bool)
(declare-fun c() Bool)
(assert (=> (not (and a b))c))
(check-sat)
(get-model)

;Example 2
(declare-fun p() Bool)
(declare-fun q() Bool)
(assert (not (= (not (or p q)) (and (not p)(not q)))))
(check-sat)

;Example 3
(declare-fun p() Bool)
(declare-fun q() Bool)
(assert (not (= (not (or p q)) (and (not p)(not q)))))
(check-sat)