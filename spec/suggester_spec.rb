require 'suggester'

describe Suggester do
  it 'suggests a term for a misspelled word' do
    word = 'remimance'
    terms = ['remembrance', 'reminiscence']

    expect(Suggester.get_suggestion(word, terms)).to eq('remembrance')
  end
end
