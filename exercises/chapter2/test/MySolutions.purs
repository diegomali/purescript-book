module Test.MySolutions where

import Prelude

import Global (readFloat)
import Math (e, pi, pow, sqrt)

diagonal :: Number -> Number -> Number
diagonal co ca = sqrt ((pow co 2.0) + (pow ca 2.0))

circleArea :: Number -> Number
circleArea radius = pi * (pow radius 2.0)

addE :: String -> Number
addE  str = readFloat str + e