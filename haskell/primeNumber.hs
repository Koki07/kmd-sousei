module Main where

primes :: [Integer]
primes = 2 : sieve [3, 5 ..]
  where sieve (p : xs) = p : sieve [x | x <- xs, rem x p /= 0]


main :: IO ()
main = do
  print $ primes
