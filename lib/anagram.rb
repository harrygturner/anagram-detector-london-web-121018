require 'pry'

class Anagram
  attr_accessor :word
  @all = []

  def self.all
    @all
  end

  def initialize(word)
    @word = word
    self.class.all << self
  end

  def match(array_of_strings)
    anagram = []
    array_of_strings.select do |arr_word|
      if arr_word.split("").sort == @word.split("").sort
        anagram << arr_word
      end
    end
    anagram
  end
end

#Test Method

# listen = Anagram.new("listen")
# array_of_strings = %w(enlists gogle inlets banana)
#
# binding.pry
