require 'suggester'

describe Suggester do
  xit 'suggests a term for a misspelled word' do
    word = 'hippatiochomonquipoletentians'
    terms = ['hepaticocholangiocholecystenterostomies', 'hippopotomonstrosesquipedalian']

    expect(Suggester.get_suggestion(word, terms)).to eq('hepaticocholangiocholecystenterostomies')
  end

  it 'returns the Longest Common subsequence' do
  end
end
