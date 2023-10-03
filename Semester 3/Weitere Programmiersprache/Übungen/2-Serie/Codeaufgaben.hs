module Serie2 where

import Data.Char

-- ##### Aufgabe 2 #####

str :: [Char]
str = "Hallo Welt"

logic :: Bool -> Bool -> Bool
logic a b = a && b

fun0 :: Eq p => p -> p
fun0 a = a

fun1 :: Num a => a -> a -> a
fun1 a b = a + b

fun2 :: Eq a => [a] -> [a] -> [Bool]
fun2 a b = [a == b]


-- ##### Aufgabe 3 #####


evaluateIBAN :: [Char] -> Bool
evaluateIBAN a = mod (convertIbanToInt a) 97 == 1

convertIbanToInt :: [Char] -> Integer
convertIbanToInt a = read (getBBAN a ++ getEncodedCountryCode a ++ getCheckDigits a)

getBBAN :: [Char] -> [Char]
getBBAN = drop 4

getCheckDigits :: [Char] -> [Char]
getCheckDigits a = take 2 (drop 2 a)

getEncodedCountryCode :: [Char] -> [Char]
getEncodedCountryCode a = encodeCountryCode (take 2 a)

encodeCountryCode :: [Char] -> [Char]
encodeCountryCode [] = []
encodeCountryCode a = show (ord (head a) - 55) ++ encodeCountryCode (tail a)

-- ##### Aufgabe 4 #####
-- > Siehe Serie2.hs
