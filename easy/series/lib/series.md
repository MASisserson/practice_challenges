# Problem

Write a program that takes a string of numbers and a length. It should return all the consecutive numbers of the given length as sub_arrays of a larger array

# Requirements

1. A `Series` class that is constructed with a string of integers
2. A `slices` instance method that returns an array of sub arrays

# Process

*slices* (takes `length`)
  convert the string into an integer, and then into that integer's digits in order
  initialize an array. `series_arr`
  Two internal loops
    1. one going from the first element to the element that is (`length` + 1) less than the digit arr size.
    2. the second running from the first to the element `length` away
        Here, add every element from the second array to `series_arr`'s sub-arr corresponding to the index given from the first loop.

  alternative plan:
  1. I can cut `digits` at specific indices using `#slice`
  2. The first index can be decided by a loop that runs from 0 to `digits` size - `length`
  3. The second index is just the first index plus `consecutive`
  4. Each slice can be split into characters and then each character converted into a digit.
  5. Then the slice can be added to `series_arr`
