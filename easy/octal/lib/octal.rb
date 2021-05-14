require 'pry'

class Octal
  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if num =~ /[^0-7]/

    decimal = 0
    num.to_i.digits.each_with_index do |digit, index|
      decimal += digit_conversion(digit, index)
    end

    decimal
  end

  private

  attr_accessor :num

  def digit_conversion(octal_digit, exponent)
    octal_digit * (8**exponent)
  end
end
