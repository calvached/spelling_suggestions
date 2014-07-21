class Suggester
  def self.get_suggestion(word, terms)
    terms.max_by { |term| common_chars(word, term) }
  end

  private
  def self.common_chars(word, term)
    term_copy = term.clone

    word.chars.reduce(0) do |count, letter|
      term_copy.sub!(letter,'') ? count + 1 : count
    end
  end
end
