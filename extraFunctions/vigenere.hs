import Data.Maybe
import Data.Char

vigenere :: String -> String -> String
vigenere text key = concat $ map (\c -> mapp c) $ map (`mod` 26) $ zipWith (+) mappedtext mappedkey  
   where 
         mapear l = [number | (letter, number) <- zip ['A'..'Z'] [0..25], l == letter]
         check l = head $ mapear l  
         mappedtext =  [fromJust z | z <- map(\a -> if isSpace a then Nothing else Just (check a)) text, isJust z]
         mappedkey =  [fromJust z | z <- map(\c -> if isSpace c then Nothing else Just (check c)) key, isJust z]
         mapp c = [letter | (letter, number) <- zip ['A'..'Z'] [0..25], c == number]

         

