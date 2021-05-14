class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    counter = 0
    sorted_by_size = [strand, other_strand].sort_by { |string| string.size }
    shorter_strand, longer_strand = sorted_by_size.first.chars, sorted_by_size.last.chars
    shorter_strand.each_with_index do |value, index|
      counter += 1 if value != longer_strand[index]
    end
    
    counter
  end

  private

  attr_accessor :strand
end
