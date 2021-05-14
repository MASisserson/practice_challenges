class RomanNumeral
  attr_accessor :number

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def initialize(number)
    @number = number
  end

  def to_roman
    roman_version = ''
    to_convert = number
    roman_num = ROMAN_NUMERALS.keys
    arabic_num = ROMAN_NUMERALS.values

    roman_num.each_with_index do |num, idx|
      multiplier, remainder = to_convert.divmod(arabic_num[idx])
      if multiplier > 0
        roman_version += (num * multiplier)
      end
      to_convert = remainder
    end
    roman_version
  end
end
