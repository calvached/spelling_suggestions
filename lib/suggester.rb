class Suggester
  def self.get_suggestion(word, terms)
    terms.max_by { |term| common_chars(word, term) }
  end

  private
  def self.common_chars(word, term)
    table = subsequence_table(word.length, term.length)

    word.each_char.with_index(1) do |word_char, row_index|
      term.each_char.with_index(1) do |term_char, column_index|

        left_cell = table[row_index][column_index-1]
        top_cell = table[row_index-1][column_index]
        diagonal = table[row_index-1][column_index-1]

        diagonal += 1 if match_found?(word_char, term_char)

        table[row_index][column_index] = [left_cell, top_cell, diagonal].max
      end
    end

    table[-1][-1]
  end

  def self.match_found?(word_char, term_char)
    word_char == term_char
  end

  def self.subsequence_table(row, column)
    table = Array.new(row) { Array.new(column) }
    filled_columns_table = fill_top_columns(table, column)
    fill_left_rows(filled_columns_table)
  end

  def self.fill_top_columns(table, column_size)
    table.unshift([0] * column_size)
  end

  def self.fill_left_rows(table)
    table.each { |row| row.unshift(0) }
  end
end
