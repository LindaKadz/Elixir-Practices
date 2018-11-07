#Defining functions that do various things
list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
   list_concat = fn e, f -> e ++ f end
sum.(1, 2, 3) #=> 6
   sum = fn a, b, c -> a + b + c end
pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]
   pair_tuple_to_list = fn {a, b} -> [a, b] end

#Section 2
prefix = fn b -> fn a -> "#{a} #{b}" end end

#When calling the prefix function, you call it twice with different strings. It concatinates the strings and brings one string
