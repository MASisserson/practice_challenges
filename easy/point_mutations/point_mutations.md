Write a program that can calculate the Hamming distance between two DNA strands.

A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA. Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell. Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute. In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic mutations over many generations.

The simplest and most common type of nucleic acid mutation is a point mutation, which replaces one base with another at a single nucleotide.

By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

This is called the Hamming distance.

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^

The Hamming distance between these two DNA strands is 7.

The Hamming distance is only defined for sequences of equal length. If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.

# Plan

*Definitions*
Hamming distance - the number of dif nucleotides between two DNA strands.

*Requirements*
1. TWo sequences of equal length.
2. If unequal length, check dif based on the shorter of the two. Presumably starting from the first position always
3. A class called `DNA` with one method: `#hamming_distance` that takes a new DNA strand string and compares it to he one saved in the object instantiated from `DNA`

*Mental Model for `#hamming_distance`*
I'll sort out which strand is the shortest, and then iterate through that one. Within that iteration, I will compare the two nucleotides at the same position. If different, I will increment a counter. Then I return the counter.
