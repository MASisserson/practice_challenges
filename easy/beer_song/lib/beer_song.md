# Problem

Generate all the lyrics of 99 bottles of beer on the wall.

# Requirements
1. `BeerSong` class
2. `verse` class method that returns a string based on the integer given.
    Can take up to two arguments, running from first argument to last argument in verse.
    The number of beer bottles correlates with the argument given.
3. `lyrics` class method that returns all the lyrics of the song from 99 bottles to 0 bottles.

# Method planner

*self.verse*
1. Will take one or two arguments.
2. Initialize a var correlated to `start` that keeps track of the number of beers on the wall. (unecessary)
3. Initialize a var for the lyrics to be returned. (`verses`)
4. loop as many times as necessary to get from start to final, tracking the number as you go. Pump the number into a string for the proper lyric at the time and add that to `verses`.

# Issues

1. the lyrics change slightly when there is 1 bottle of beer and when there are no bottles of beer.
    This can easily be solved with an if statement and another method.
