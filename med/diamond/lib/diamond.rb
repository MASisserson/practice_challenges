class Diamond
  def self.make_diamond(letter)
    letter_range = ('A'..letter).to_a
    outer_spaces = letter_range.size - 1
    inner_spaces = 0
    position = 0
    diamond = ''
 
    
  end

  private

  def self.inner_spaces_formula
    1 + ((idx - 1) * 2)
  end

  def self.return_line(arr, idx)
    if idx == 0
      "#{' ' * (arr.size - 1)}#{arr[idx]}#{' ' * (arr.size - 1)}"
    else "#{' ' * ((arr.size - 1) - idx)}#{arr[idx]}/"
      "#{inner_formula(idx)}#{arr[idx]}"/
      "#{' ' * ((arr.size - 1) - idx)}"
    end
  end
end
