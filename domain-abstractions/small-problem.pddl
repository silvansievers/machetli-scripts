
(define (problem printjob)
 (:domain etipp)
 (:init
   (= (total-cost ) 0)
   (location sheet1 some_feeder_tray)
   (notprintedwith sheet1 back color)
 )
 (:goal
   (notprintedwith sheet1 back color)
 )
 (:metric minimize (total-cost))
)
