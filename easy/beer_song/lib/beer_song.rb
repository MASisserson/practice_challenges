require 'pry'

class BeerSong
  def self.verse(start, final=start)
    raise ArgumentError, "second argument can't be greater than first" if final > start

    returned_lyrics = ''
    start.downto(final) do |beers|
      returned_lyrics << "\n" if !returned_lyrics.empty?
      returned_lyrics << self.generate_lyric(beers)
    end

    returned_lyrics
  end

  def self.verses(start, final=start)
    self.verse(start, final)
  end

  def self.lyrics
    self.verse(99, 0)
  end

  private

  def self.generate_lyric(beers)
    case beers
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{beers} bottles of beer on the wall, #{beers} bottles of beer.\n" \
      "Take one down and pass it around, #{beers - 1} bottles of beer on the wall.\n"
    end
  end
end
