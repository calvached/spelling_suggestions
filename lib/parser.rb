class Parser
  def self.parse(word_file)
    word_groups = []
    captured_words = []

    File.foreach(word_file) do |line|

      if matches_keyword?(line)
        captured_words << line.strip
      else
        word_groups << format_into_hash(captured_words) if !captured_words.empty?
        captured_words = []
      end

    end

    word_groups << format_into_hash(captured_words)
  end

  private
  def self.matches_keyword?(line)
    line =~ /([^\d\W]+)/
  end

  def self.format_into_hash(captured_words)
    hash = {}
    hash[:word] = captured_words.shift
    hash[:terms] = captured_words
    hash
  end
end
