# Problem

Create a clock that displays time but does not count on its own.
Needed functionality:
1. Displays a time (military time) as a string
2. Minutes can be added or subtracted
3. Two clock objects with the same time should be equal according to `==`

# Requiremetns

1. `Clock` class.
2. `at` class method.
      Should instantiate a clock object
      Should convert an integer to a time;      9 => '9:00'
      Should convert two integers to a time;    11, 9 => '11:09'
      Should take less or additional minutes;   (10) - 50 => '9:50'
      Should work in military time;             15, 37 => '15:37'
      Should wrap around forward and back;      (0, 30) - 60 => '23:30'
3. `+`
      Should add an arg number of minutes to the clock time
4. `-`
      Should reduce an arg number of minutes from the clock time
5. `to_s`
      Should format the information on the clock into a string
6. `==`
      Should be able to compare the time of two clock objects.

# Process

1. Keep a record of minutes based on the initial input
2. 

*at*
Should return a formatted string in the form of 'hours:minutes'

*+ and -*
0. Split the formatted time at the ':'
1. Multiply the `hr` by 60 and add the `min` => `total_minutes`
2. modulo by 1440 (minutes in a day), then add the remainder to 1440

# Thoughts

1. Use `#format` to format the final strin goutput
2. Use division to get the hours from the total minutes
3. Use modulo to get the final minutes from the total minutes
