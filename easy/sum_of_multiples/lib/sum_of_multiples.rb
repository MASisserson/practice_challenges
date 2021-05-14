class SumOfMultiples
  @@set = [3, 5]

  def initialize(set)
    @set = @@set
    @set = set if set
  end

  def self.to(max, set=@@set)
    multiples = []

    set.each do |increment|
      sum = 0
      
      loop do
        sum += increment
        break if sum >= max
        multiples << sum
      end
    end

    multiples.uniq.sum
  end

  def to(max)
    self.class.to(max, @set)
  end
end
