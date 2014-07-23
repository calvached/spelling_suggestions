class Suggester
  def self.get_suggestion(word, terms)
    terms.each do |term|
      p common_chars(word, term)
    end
    #terms.max_by { |term| common_chars(word, term) }
  end

  private
  def self.common_chars(word, term)
    term_copy = term.clone
    count = 0

    word.chars.each do |letter|
      if term_copy.sub!(letter,'-')
        count += 1
      end
    end

    count
  end
end
