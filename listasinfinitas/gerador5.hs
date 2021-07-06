import Data.List

gerador5 x = unfoldr (\a -> if a < 1 then Nothing else Just(a, a `div` 2)) x

main = do
   a <- readLn :: IO Int
   print $ gerador5 a

