# Problem

Return a civil `Date` object based on the following criteria:
1. A year and month are saved to a intantiated `Meetup` object.
2. a `day` method is given a weekday and a descriptor. This method should return the date object.

# Procedure

1. Save the year and month as instance variables => `@year` `@month`
2. Generate date objects for every day of that month and add them to a `valid_weekdays` array if they are of the desired weekday.
3. Sort through that array to find the day that meets the descriptor.
