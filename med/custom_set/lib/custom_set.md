# Problem

Create a custom set

# Requirements

classes

1. CustomSet
    Only needs to handle integer elements
    Constructor takes an array of elements.
    Elements should be uniq, so duplicate elements should not exist in the set.
    Can `empty?`, returning true if no elements are in the set, false otherwise.
    Can `contains?`, returning true the arg is present in the set, false otherwise.
    Can `subset?`, returning true if the elements of the calling object are all present in the argument `CustomSet`, false otherwise.
    Can `disjoint?`, returning true if none of the elements in the calling object are present in the argument `CustomSet`, false otherwise. Should return true if both calling object and argument are empty.
    Can `eql?`, returning true if all the elements in the calling object are present in the argument and vice versa, regardless of relative position, false otherwise. Here, duplicate elements do not matter, such that `[1, 2, 2, 1].eql?([2, 1]) == true`
    Can `==`, returning true if two sets contain the same elements. Duplicates don't matter.
    Can `add`, inserting the argument to the end of a set. Return `self`.
    Can `intersection`, returning a new `CustomSet` object with elements present in both the calling object and the argument `CustomSet` object.
    Can `difference`, returning a new `CustomSet` object with elements present only in the calling object and not in the argument `CustomSet` object.
    Can `union`, returning a new `CustomSet` object with elements present in either the calling object or the argument `CustomSet` object.
