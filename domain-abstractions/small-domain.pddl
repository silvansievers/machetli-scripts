
(define (domain etipp)
 (:requirements :action-costs :typing)
 (:types
   size_t location_t side_t color_t image_t resource_t sheet_t - object
 )
 (:constants
   letter - size_t
   color - color_t
   back - side_t
   some_feeder_tray fe1_exit-hw1_leftentry lc1_entry-hw1_bottomleftexit lime_entry-lc1_exittoime lc1_entryfromime-lime_exit - location_t
   sheet1 - sheet_t
   image-1 - image_t
 )
 (:predicates
  (location ?sheet - sheet_t ?location - location_t)
  (sideup ?sheet - sheet_t ?side - side_t)
  (notprintedwith ?sheet - sheet_t ?side - side_t ?color - color_t)
 )
 (:functions
  (total-cost ) - number
 )
 (:action fe1-feedmsi-letter
  :parameters (?sheet - sheet_t )
  :precondition
  (location ?sheet some_feeder_tray)
  :effect
  (and
    (location ?sheet fe1_exit-hw1_leftentry)
    (sideup ?sheet back)
    (not (location ?sheet some_feeder_tray))
    (increase (total-cost ) 125)
  )
 )
 (:action hw1-leftentrytobottomleftexit-letter
  :parameters (?sheet - sheet_t )
  :precondition
  (location ?sheet fe1_exit-hw1_leftentry)
  :effect
  (and
    (location ?sheet lc1_entry-hw1_bottomleftexit)
    (not (location ?sheet fe1_exit-hw1_leftentry))
    (increase (total-cost ) 1499)
  )
 )
 (:action lc1-toime-letter
  :parameters (?sheet - sheet_t )
  :precondition
  (location ?sheet lc1_entry-hw1_bottomleftexit)
  :effect
  (and
    (location ?sheet lime_entry-lc1_exittoime)
    (not (location ?sheet lc1_entry-hw1_bottomleftexit))
    (increase (total-cost ) 4999)
  )
 )
 (:action lime-simplex-letter
  :parameters (?sheet - sheet_t ?face - side_t ?image - image_t )
  :precondition
  (and
    (sideup ?sheet ?face)
    (location ?sheet lime_entry-lc1_exittoime)
    (notprintedwith ?sheet ?face color)
  )
  :effect
  (and
    (location ?sheet lc1_entryfromime-lime_exit)
    (not (location ?sheet lime_entry-lc1_exittoime))
    (not (notprintedwith ?sheet ?face color))
    (increase (total-cost ) 212790)
  )
 )
)
