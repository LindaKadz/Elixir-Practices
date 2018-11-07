#Pattern Matching Section 1
a = [1, 2, 3] "Will match"
a = 4 "Will match"
4 = a "Will match only if a was previously matched to 4"
[a, b] = [ 1, 2, 3 ] "Will not match"
a = [ [ 1, 2, 3 ] ] "Will match"
[a] = [ [ 1, 2, 3 ] ] "Will match"
[[a]] = [ [ 1, 2, 3 ] ] "Will not match"

#Section 2
[ a, b, a ] = [ 1, 2, 3 ] "Will not match"
[ a, b, a ] = [ 1, 1, 2 ] "Will not match"
[ a, b, a ] = [ 1, 2, 1 ] "Will match"

#Section 3: a is bound to variable 2
[ a, b, a ] = [ 1, 2, 3 ] "Will not match"
[ a, b, a ] = [ 1, 1, 2 ] "Will not match"
a = 1 "Will match"
^a = 2 "Will match"
^a = 1 "Will not match"
^a = 2 - a "Will not match"
