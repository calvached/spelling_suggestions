require 'suggester'

describe Suggester do
  it 'suggests a term for a misspelled word' do
    word = 'hippatiochomonquipoletentians'
    terms = ['hepaticocholangiocholecystenterostomies', 'hippopotomonstrosesquipedalian']

    expect(Suggester.get_suggestion(word, terms)).to eq('hepaticocholangiocholecystenterostomies')
  end

  it 'returns the Longest Common subsequence' do
    word = 'numm'
    term = 'nom'

    expect(Suggester.common_chars(word, term)).to eq(2)
  end

end
