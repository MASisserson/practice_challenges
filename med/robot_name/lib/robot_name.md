# Problem

I need to make a `Robot` class that can `name` itself on boot. The `constructor` should `do nothing`. There should be no repeat of names.

*GENERATE A RANDOM NAME*
Generate an array of capital letters and an array of digits. Randomly pull from these arrays in the appropriate number of times and add it to a string (`new_name`).

*CONFIRM THAT THE NAME IS NOT ALREADY MADE*
Confirm against `@@name_list` class variable

*RESET*
wipe `@name` to `nil`

*NAME*
Should return name if name is not `nil`. Should generate a new name if `name` is nil.
