# Problem
Write a program that can tell if a number is perfect, abundant, or deficient according to the scheme Nicomachus came up with.

Constructor -> nothing

class definitions:
  classify -> returns a string telling whether the number is perfect, abundand, or deficient. Returns `StandardError` if given a negative number

# Rules
1. Prime numbers are always deficient

# Process
1. Find the number's divisors (the nubmers that multiply into the number, but not including the number)
2. add those divisors together
  a. If result > number then abundant
  b. If result < number then deficient
  c. If result == number then perfect
