require 'suggester'
require 'parser'

class SpellChecker
  attr_accessor :word_data

  def initialize(word_file = 'data/sample-input.txt')
    @word_data = Parser.parse(word_file)
  end

  def get_all_suggestions
    word_data.reduce([]) do |matches, dictionary|
      matches << Suggester.get_suggestion(dictionary[:word], dictionary[:terms])
    end
  end
end
