class CustomSet
  def initialize(arr=[])
    @set = arr.uniq
  end

  def empty?
    set.empty?
  end

  def contains?(ele)
    set.include? ele
  end

  def subset?(other_set)
    set.each do |element|
      return false if !(other_set.contains? element)
    end

    true
  end

  def disjoint?(other_set)
    return true if set.empty? && other_set.empty?

    set.each do |element|
      return false if other_set.contains? element
    end

    true
  end

  def ==(other)
    set.sort == other.set.sort
  end
  alias :eql? :==

  def add(ele)
    set << ele
    @set = set.uniq
    self
  end

  def intersection(other_set)
    CustomSet.new(set.select { |ele| other_set.contains? ele })
  end

  def difference(other_set)
    CustomSet.new(set.select { |ele| !(other_set.contains? ele)})
  end

  def union(other)
    CustomSet.new(set | other.set)
  end

  protected

  attr_reader :set
end
