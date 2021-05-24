# Problem

Gotta make method that takes a letter from the alphabet and returns a diamong shape.

# Rules

1. Output has to be all one string.
2. 

# Process
1. Make a range to flow through starting with 'A' and ending with the letter.upcase
2. Create a blank string
3. Add lines of the diamond to the string using a loop with a corresponding number of spaces, letters, and newline characters therein.

"A"

"  A  \n"
" B B \n"
"C   C\n"
" B B \n"
"  A  \n"

"    A    \n"   4-0-4
"   B B   \n"   3-1-3
"  C   C  \n"   2-3-2
" D     D \n"   1-5-1
"E       E\n"   0-7-0
" D     D \n"
"  C   C  \n"
"   B B   \n"
"    A    \n"

letter_range = ['A'..letter]
outer_spaces = (array.size - 1) - idx
inner_spaces = 0
letter_index = 0

1. Increment up from index 0 to a number one smaller than the size of the letter array. Save the number as the idx
  Letter:       A B C D E
  idx:          0 1 2 3 4
  inner_spaces: 0 1 3 5 7
      inner_formula: 1 + ((idx - 1) * 2)
2. Then increment down from two less than the size of the array to 0. Save the number as the idx.
    3 2 1 0
    D C B A
3. define a branching path
    1. if idx == 0, then "#{' ' * (arr.size - 1)}#{arr[idx]}#{' ' * (arr.size - 1)}"
    2. else "#{' ' * ((arr.size - 1) - idx)}#{arr[idx]}#{inner_formula(idx)}#{arr[idx]}#{' ' * ((arr.size - 1) - idx)}"
