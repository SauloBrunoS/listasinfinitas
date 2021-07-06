import Data.List

-- digitos n = reverse $ unfoldr (\a -> if a > 0 then Just (a `mod` 10, a `div` 10) else Nothing) n

main = do
   a <- readLn  :: IO Int
   print $ digitos a
