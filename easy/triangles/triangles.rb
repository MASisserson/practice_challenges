# Triangles

class Triangle
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    raise ArgumentError, "Invalid triangle lengths" if !triangle?
  end

  def kind
    case
    when sides.uniq.size == 1
      'equilateral'
    when sides.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end

  private

  attr_accessor :s1, :s2, :s3

  def triangle?
    all_sides_greater_than_zero && any_two_sides_greater_than_third
  end

  def all_sides_greater_than_zero
    s1 > 0 && s2 > 0 && s3 > 0
  end

  def any_two_sides_greater_than_third
    (s1 + s2) > s3 &&
    (s1 + s3) > s2 &&
    (s2 + s3) > s1
  end
end
