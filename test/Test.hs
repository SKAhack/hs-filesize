module Main where

import Filesize as F

main :: IO ()
main = do
    putStrLn $ F.filesize 10000000
