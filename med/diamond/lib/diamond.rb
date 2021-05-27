class Diamond
  def self.make_diamond(arg)
    request = arg.upcase
    self.determine_alphabet_location(request)
    @@outer = @@alph_idx - 1
    @@inner = 1

    diamond_string = ''
    diamond_string << self.a_line(request)
    return diamond_string if request == 'A'

    diamond_string << self.center_lines(request)
    diamond_string << self.a_line(request)
    diamond_string
  end

  private

  def self.a_line(arg)
    "#{@@alph_idx * ' '}A#{@@alph_idx * ' '}\n" 
  end

  def self.b_line(arg)
    "#{@@outer * ' '}B B#{@@outer * ' '}"
  end

  def self.after_b_lines(arg)
    going_up = true

    until 
  end

  def self.center_lines(arg)

  end

  def self.determine_alphabet_location(arg)
    counter = 0

    'A'.upto('Z') do |check_letter|
      break if arg == check_letter
      counter += 1
    end

    @@alph_idx = counter
  end
end









 
























# class Diamond
#   def self.make_diamond(letter)
#     letter_range = ('A'..letter.upcase).to_a
#     outer_spaces = letter_range.size - 1
#     inner_spaces = 0
#     position = 0
#     diamond = ''
 
    
#   end

#   private

#   def self.inner_spaces_formula
#     1 + ((idx - 1) * 2)
#   end

#   def self.return_line(arr, idx)
#     if idx == 0
#       "#{' ' * (arr.size - 1)}#{arr[idx]}#{' ' * (arr.size - 1)}"
#     else "#{' ' * ((arr.size - 1) - idx)}#{arr[idx]}"/
#       "#{self.inner_formula(idx)}#{arr[idx]}"/
#       "#{' ' * ((arr.size - 1) - idx)}"
#     end
#   end
# end
