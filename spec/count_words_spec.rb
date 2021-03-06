require 'count_words'

describe 'count_words' do 
  it "fails" do
    expect {count_words("")}.to raise_error "There are no words to count"
  end

  it "Give a string and return the quantity of words" do
    result = count_words("The quick brown fox jumps over the lazy dog")
    expect(result).to eq 9
  end

  it "Give a string and return words, excluding symbols and numbers" do
    result = count_words("I Love Ruby <3 !!")
    expect(result).to eq 3
  end

end