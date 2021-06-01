class Clock
  def initialize(value)
    @value = value
  end

  def +(addend)
    puts @value + addend
  end

  # def self.test(val)
  #   puts val
  # end

  # def self.at(val_1, val_2=0)
  #   puts val_1
  #   puts val_2
  # end

  # def self.-(arg)
  #   10 - arg
  # end
end

Clock.new(10) + 8

# Clock.test(10).-(8)

# Clock.at(10).-(8)
# Clock.at(10, 9) - 8
# Clock.at(5) - 8
