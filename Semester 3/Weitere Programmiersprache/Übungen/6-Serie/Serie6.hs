module Serie6 where

data Auto = Auto {bezeichnung::String, preis::Int, alter::Int, besitzer::Person}

data Person = Person {name::String, adresse::String} deriving (Show, Eq)

printAuto :: Auto -> String
printAuto Auto {bezeichnung=b, preis=p, alter=a} = "Das Auto " ++ b ++ " ist " ++ show a ++ " Jahre alt und kostet " ++ show p ++ " Euro"

collectionWorth :: Person -> [Auto] -> Int
collectionWorth p as = sum [preis a | a <- as, p == besitzer a]

oldtimers :: [Auto] -> [Auto]
oldtimers as = [x | x <- as, alter x >= 30]
