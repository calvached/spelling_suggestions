require 'parser'

describe Parser do
  it 'should parse a word file' do
    word_file = 'data/sample-input.txt'

    expect(Parser.parse(word_file)).to eq(
      [
        {:word=>"remimance", :terms=>["remembrance", "reminiscence"]},
        {:word=>"inndietlly", :terms=>["immediately", "incidentally"]}
      ])
  end
end
