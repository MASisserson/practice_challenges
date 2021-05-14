class Anagram
  def initialize(word)
    @word = word
  end

  def match(word_arr)
    result = []
    word_arr.each { |str| result << str if anagram?(str) }
    result
  end

  private

  attr_accessor :word

  def anagram?(string)
    string.downcase.chars.sort == word.downcase.chars.sort &&
    string.downcase != word.downcase
  end
end
