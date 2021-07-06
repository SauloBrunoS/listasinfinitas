import Data.List

gerador1 = iterate (\x -> if x > 0 then (-x) else (-x) + 1) 0 

main = do
    print gerador1
