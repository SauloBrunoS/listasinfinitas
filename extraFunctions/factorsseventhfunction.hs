import Data.List

ehPrimo n = null [z | z <- [2..n-1], n `mod` z == 0]

factors n
 | ehPrimo n = [(n,1)]
 | otherwise = [(p, maxPot n p) | p <- [2..n-1], ehPrimo p, maxPot n p > 0]

maxPot n x = sum $ unfoldr (\b -> if(b `mod` x == 0) then Just (1, b `div` x) else Nothing) n

main = do
   a <- readLn     :: IO Int
   print $ factors a
  
