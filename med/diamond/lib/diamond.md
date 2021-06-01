# problem
1. I need to make a diamond
    I could make a string template with spaces and letters like:
    outer_spaces = ##
    diamond_length = ##
    loop to increment a `outer_spaces` and `inner_spaces` number. `tot_lines` can be derived from the alphabet given
    "#{outer_spaces * ' '}#{construct_diamond(line, tot_lines)}#{outer_spaces * ' '}\n"

    construct_diamond
      loop that ran a number of times equal to `diamond_size` for this line
      the first and last spaces deposited a letter corresponding to a position in the alphabet array. Everythign in between, ' '

2. I need to add letters to the diamond at the right places
    I could make an array to work through

# Requirements
Classes

Diamond
  can `self.make_diamond`, when given a capitalized letter, will return a string representation of the diamond shape, complete with newline characters.
