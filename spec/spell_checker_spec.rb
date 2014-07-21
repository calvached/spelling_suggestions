require 'spell_checker'

describe SpellChecker do
  let (:checker) { SpellChecker.new }

  it 'selects the best suggestion for each misspelled word' do
    checker.word_data = [
        {:word=>"remimance", :terms=>["remembrance", "reminiscence"]},
        {:word=>"inndietlly", :terms=>["immediately", "incidentally"]}
      ]

    expect(checker.get_all_suggestions).to eq(['remembrance', 'incidentally'])
  end
end
