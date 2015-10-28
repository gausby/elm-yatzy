module Yatzy.Score where

--   upper n ds should return the score for the roll ds used in the
--   slot for n number of eyes in the upper section of the score sheet.
upper : Int -> List Int -> Int
upper n ds =
  List.filter (\x -> x == n) ds |> List.sum

--   chance ds should return the sum of the eyes on the dice.
chance : List Int -> Int
chance ds =
  List.sum ds

--   yatzy ds should return 50 if all dice are showing the same number
--   of eyes.
yatzy : List Int -> Int
yatzy ds =
  let
    head = List.head ds |> Maybe.withDefault 0
  in
    if List.all (\x -> head == x) ds
    then 50
    else 0

--   smallStraight ds should return 15 for any set of dice containing
--   the sequence 1-2-3-4-5 in any order.
smallStraight : List Int -> Int
smallStraight ds =
  if [1..5] == List.sort ds
  then 15
  else 0

--   largeStraight ds should return 20 for any set of dice containing
--   the sequence 2-3-4-5-6 in any order.
largeStraight : List Int -> Int
largeStraight ds =
  if [2..6] == List.sort ds
  then 20
  else 0

--   fourOfAKind ds has a value when there are four of a kind in the
--   roll and then its value is the total number of eyes on the dice
--   being four of a kind.
fourOfAKind : List Int -> Int
fourOfAKind ds =
  -1

-- n [1,2,2,2,3]

threeOfAKind : List Int -> Int
threeOfAKind ds =
  -1

onePair : List Int -> Int
onePair ds =
  -1

twoPair : List Int -> Int
twoPair ds =
  -1

fullHouse : List Int -> Int
fullHouse ds =
  -1
