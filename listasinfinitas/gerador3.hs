import Data.List

gerador3 = [2 ^ z | z <- [0..]]

-- gerador3 = iterate (*2) 1

main = do 
   print gerador3 
