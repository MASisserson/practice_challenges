class Diamond
  def self.make_diamond(letter)
    alphabet_arr = construct_alphabet_arr(letter)

    diamond_height = alphabet_arr.size
    outer_spaces = alphabet_arr.uniq.size - 1
    inner_spaces = 1
    mid_point = (diamond_height / 2) + 1
    index = 0
    result = ''

    until index >= diamond_height
      result << create_line(outer_spaces, inner_spaces, alphabet_arr[index])
      index += 1
      if index < mid_point
        outer_spaces -= 1
        inner_spaces += 2
      else
        outer_spaces += 1
        inner_spaces -= 2
      end
    end

    result
  end

  private

  def self.construct_alphabet_arr(letter)
    ('A'..letter).to_a + ('A'..letter).to_a.reverse.drop(1)
  end

  def self.create_line(outer, inner, letter)
    "#{' ' * outer}#{diamond_part(inner, letter)}#{' ' * outer}\n"
  end

  def self.diamond_part(inner, letter)
    if inner == 1
      letter
    else
      letter + (' ' * (inner - 2)) + letter
    end
  end
end
