# Triangles

Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

An equilateral triangle has all three sides the same length.

An isosceles triangle has exactly two sides of the same length.

A scalene triangle has all sides of different lengths.

Note: For a shape to be a triangle at all, all sides must be of length > 0, and the sum of the lengths of any two sides must be greater than the length of the third side.


# Plan (PEDAC)

Input: ???
Output: ???

Requirements:
1. Triangle class with
2. kind method returning
  1. 'isosceles', 'equilateral', 'scalene'
  2. ArgumentError if side <= 0 || sum of the lengths of any two sides are not greater than the length of the third side.

Problem:
I must create a `Triangle` class that accepts side lengths upon instantiation. If the side lengths do not make up a proper triangle, an `ArgumentError` is to be returned. If we pass this step, the class should be able to run a `#kind` method.

*Mental Model*
For kind
