fizzbuzz = fn
  0, 0, c -> "Fizzbuzz"
  0, b, c -> "Fizz"
  a, 0, c -> "Buzz"
  a, b, c -> c
end

arch = fn n -> fizzbuzz(rem(n, 3)) end 
