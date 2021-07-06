
gerador4 x = takeWhile (/= 0) $ iterate (`div` 2) x

main = do
    a <- readLn :: IO Int
    print $ gerador4 a
