require 'pry'

class Scrabble
  SCORES = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z)
  }

  def initialize(word)
    @word = word
  end

  def score
    result = 0
    return result if word.nil?
    word.each_char do |char|
      SCORES.each do |score, letters|
        result += score if letters.include? char.upcase
      end
    end
    result
  end

  def self.score(word)
    result = 0
    return result if word.nil?
    word.each_char do |char|
      SCORES.each do |score, letters|
        result += score if letters.include? char.upcase
      end
    end
    result
  end

  private

  attr_accessor :word
end
