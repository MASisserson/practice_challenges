# Problem
I need to create a singly linked list class. Each element in the list contains data and a 'next' field pointing to the next element in the list of elements. Should be a 'push down list'. This means that every contiguous addition to the list references the previous addition in ints pointer.

Classes:
1. SimpleLinkedList
    Constructor creates `@head`
    Can `size`, returning the size of the list so far
    Can `empty?`, returning true if the list is empty. False otherwise
    Can `peek`, returning the head element data.
    Can `push`, adding an element to the list with `data` = argument. If there is already another element in the list, the new element should point to the last element in the list.
    Can `head`, returning the latest element added to the list
    Can `pop`, removing the list's head and returning its data
    Can `self.from_a`, returning a new `SimpleLinkedList` object from the parameters given
      `[]` returns an empty list
      `nil` returns an empty list
      `[1, 2]` returns a list with `1` as the data for the head element and `2` for the tail ele.
    Can `to_a`, returning an array of data. Inverse of `self.from_a`
    Can `reverse`, returning a new list that has the elements in reverse order, all pointing in the opposite direction.
2. Element
    Has data (`data`)
    Has a field that points to the next element (`pointer`)
    can `datum`, returning the number (data) stored within
    can specify data within and the previous data point (`pointer`) in the constructor
    Can `tail?`, returning true if it is the list tail, meaning the first element added. This will have `nil` as the `pointer`
    Can `next`, returning the element the `pointer` points to
