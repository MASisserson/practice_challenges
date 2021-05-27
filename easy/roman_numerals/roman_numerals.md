# Problem
Convert arabic numerals to roman numerals. I need a `RomanNumerals` class with a `#to_roman`. The class constructor should take a number that is saved. `#to_roman` should convert the saved number into a roman numeral string.

# Rules
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000

# Process for roman_numeral
I can modulo by the largest section possible, and every time the modulo yields a value that isn't the remainder, we divide the remainder by the modulo. we then add the appropriate letter a number of times equal to the result.

i.e.
2100 (number)
2100 % 1000 = 100
500 != 2100 so we take 2100 / 1000 = 2 with 100 remainder
2 times, we add the value equivalent to 1000, M (hash)
'MM'
We have 100 now
100 % 500 = 100
100 == 100, so we move on
etc.

*What about cases like 9 or 90?*
They don't subtract by the values that are values with a 5 in them.

Cases
27 == XXVII

48 == XLVIII
48 % 50 == 48
48 % 49 == 48
48 % 40 == 40



59 == LIX
93 == XCIII
141 == CXLI
163 == CLXIII
402 == CDII
575 == DLXXV
911 == CMXI
1024 == MXXIV
3000 == MMM


# New solution
Take the each addition one at a time.
Does it modulo by 1000?
  Yes:  add M to the roman_string
        subtract 1000 from the remainder
        check if it modulos by 1000 again.
  No:   Does it modulo by 1000 minus any of the SUBTRACTION values? (cutting)
    Yes:  Add SUBTRACTION value and M to the roman_string
          subtract the cutting from the remainder
          break
    No:   break

    and so on...

# Syntaxically

NUMERAL_CONVERSIONS = {
  M: 1000,
  D: 500,
  C: 100,
  L: 50,
  X: 10,
  V: 5,
  I: 1
}

def to_roman
  NUMERAL_CONVERSIONS.each do |roman, arabic|

  end
end
