# Planning file for Octal

# Problem:
Implement octal to decimal conversion. Given an octal input string, the program should produce a decimal output.

Need a class named `Octal` with a `#to_decimal` method. The constructor should take a string representing an integer. `#to_decimal` should return 

# Rules
1. invalid input treated as octal 0
2. valid octal numbers only include digits 0-7.

# Expected Results
1. '1' -> 1
2. '10' -> 8
3. '17' -> 15
4. '11' -> 9
5. '130' -> 88
6. '2047' -> 1063
7. '7777' -> 4095
8. '1234567' -> 342_391
9. 'carrot' -> 0
10. '8' -> 0
11. '9' -> 0
12. '6789' -> 0
      = 6*8^3 + 8*8^3 + 
13. 'abc1z' -> 0
14. '011' -> 9
15. '234abc' -> 0

# Process

2. Return 0 if invalid number. Invalid if:
    1. any letters given
    2. any 8 or 9 digit in the given string
3. split up the digits given and assign them an exponent value based on their position in the given string. The exponent should be equal to their index in the new array after `#digits`
4. Iterate through the digits and apply each digit (x) and its exponent (n) to the equation `x * 8^(n) and save the result
5. sum the results together and return the sum

# Requirements
1. a `^` method that works as an exponential operator (can use **)
2. a formula method that returns the octal version when passed a digit and its exponent
3. the `to_decimal` method
