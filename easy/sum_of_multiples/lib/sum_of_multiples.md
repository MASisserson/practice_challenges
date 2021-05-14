# Problem
1. Need a class called `SumOfMultiples`
  1. public method `#to`
  2. private method `#to`
  3. constructor: takes a number set of variable size. If no set given assins @set to [3, 5]

# Solution
1. Define a constructor that takes a variable amount of numbers of a set and initializes a `@set` instance variable
2. Set a class variable `@@set` equal to [3, 5]
3. Iterate through multiples of the numbers in the set, one at a time as in
  3: 3, 6, 9, 12, 15 ....
  5: 5, 10, 15, ...
  stop when the current value is greater than the max given as an argument to `#to`. Add all values less than the max to an array (multiples)
4. Eliminate duplicates from `multiples` and sum the values therein together to be returned.
