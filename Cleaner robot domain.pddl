(define (domain robot-cleaner)
  (:requirements :strips)
  (:predicates
    (robot-location ?o)
    (box-location ?b ?o)
    (dirty ?o)
    (clean ?o)
    (empty ?o)
    (adjacent ?o1 ?o2)
  )

  (:action clean-office
    :parameters (?o)
    :precondition (and
      (robot-location ?o) (dirty ?o))
    :effect (and (not (dirty ?o)) (clean ?o))
  )

  (:action move
    :parameters (?o1 ?o2)
    :precondition (and
      (robot-location ?o1) (adjacent ?o1 ?o2))
    :effect (and (not (robot-location ?o1)) (robot-location ?o2))
  )

  (:action push
    :parameters (?b ?o1 ?o2)
    :precondition (and
      (box-location ?b ?o1) (robot-location ?o1) (empty ?o2) (adjacent ?o1 ?o2))
    :effect (and (not (box-location ?b ?o1)) (not (robot-location ?o1)) (not (empty ?o2))
      (box-location ?b ?o2) (robot-location ?o2) (empty ?o1))
  )
)