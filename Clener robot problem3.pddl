
(define (problem problem3)
  (:domain robot-cleaner)
  (:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 box-a box-b box-c box-d box-e box-f box-g box-h robot
  )
  (:init

    (adjacent o1 o2) (adjacent o1 o4)
    (adjacent o2 o1) (adjacent o2 o3) (adjacent o2 o5)
    (adjacent o3 o2) (adjacent o3 o6)
    (adjacent o4 o1) (adjacent o4 o5) (adjacent o4 o7)
    (adjacent o5 o4) (adjacent o5 o2) (adjacent o5 o6) (adjacent o5 o8)
    (adjacent o6 o5) (adjacent o6 o3) (adjacent o6 o9)
    (adjacent o7 o8) (adjacent o7 o4)
    (adjacent o8 o7) (adjacent o8 o5) (adjacent o8 o9)
    (adjacent o9 o8) (adjacent o9 o6)

    (empty o1)

    (box-location box-a o2)
    (box-location box-b o3)
    (box-location box-c o4)
    (box-location box-d o5)
    (box-location box-e o6)
    (box-location box-f o7)
    (box-location box-g o8)
    (box-location box-h o9)

    (dirty o1)
    (dirty o2)
    (dirty o3)
    (dirty o4)
    (dirty o5)
    (dirty o6)
    (dirty o7)
    (dirty o8)
    (dirty o9)

    (robot-location o9)
  )
  (:goal
    (and (clean o1) (clean o2) (clean o3) (clean o4) (clean o5) (clean o6) (clean o7) (clean o8) (clean o9)
        (box-location box-a o9) (box-location box-b o8) (box-location box-c o7) (box-location box-d o6)
        (box-location box-e o5) (box-location box-f o4) (box-location box-g o3) (box-location box-h o1)
        (robot-location o5)
    )
  )
)