
(define (problem problem4)
  (:domain robot-cleaner)
  (:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16
    box1 box2 box3 box4 box5 box6 box7 box8 box9 box10
    robot
  )
  (:init

    (adjacent o1 o2) (adjacent o2 o1) (adjacent o1 o5) (adjacent o5 o1)
    (adjacent o2 o3) (adjacent o3 o2) (adjacent o2 o6) (adjacent o6 o2)
    (adjacent o3 o4) (adjacent o4 o3) (adjacent o3 o7) (adjacent o7 o3)
    (adjacent o4 o8) (adjacent o8 o4) (adjacent o4 o12) (adjacent o12 o4)
    
    (adjacent o5 o6) (adjacent o6 o5) (adjacent o5 o9) (adjacent o9 o5)
    (adjacent o6 o7) (adjacent o7 o6) (adjacent o6 o10) (adjacent o10 o6)
    (adjacent o7 o8) (adjacent o8 o7) (adjacent o7 o11) (adjacent o11 o7)
    (adjacent o8 o12) (adjacent o12 o8) (adjacent o8 o16) (adjacent o16 o8)
    
    (adjacent o9 o10) (adjacent o10 o9) (adjacent o9 o13) (adjacent o13 o9)
    (adjacent o10 o11) (adjacent o11 o10) (adjacent o10 o14) (adjacent o14 o10)
    (adjacent o11 o12) (adjacent o12 o11) (adjacent o11 o15) (adjacent o15 o11)

    (empty o1)
    (empty o12)
    (empty o13)
    (empty o14)
    (empty o15)
    (empty o16)

    (box-location box1 o2)
    (box-location box2 o3)
    (box-location box3 o4)
    (box-location box4 o5)
    (box-location box5 o6)
    (box-location box6 o7)
    (box-location box7 o8)
    (box-location box8 o9)
    (box-location box9 o10)
    (box-location box10 o11)


    (dirty o1)
    (dirty o2)
    (dirty o3)
    (dirty o4)
    (dirty o5)
    (dirty o6)
    (dirty o7)
    (dirty o8)
    (dirty o9)
    (dirty o10)
    (dirty o11)
    (dirty o12)
    (dirty o13)
    (dirty o14)
    (dirty o15)
    (dirty o16)

    (robot-location o16)
  )
  (:goal
    (and (clean o1) (clean o2) (clean o3) (clean o4) (clean o5) (clean o6) (clean o7) (clean o8) (clean o9)
      (clean o10) (clean o11) (clean o12) (clean o13) (clean o14) (clean o15) (clean o16)
      (box-location box1 o15) (box-location box2 o14) (box-location box3 o13) (box-location box4 o12) (box-location box5 o11)
      (box-location box6 o10) (box-location box7 o9) (box-location box8 o8) (box-location box9 o7) (box-location box10 o6)
      (robot-location o1)
    )
  )
)