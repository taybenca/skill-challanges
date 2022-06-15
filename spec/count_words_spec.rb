require 'count_words'

describe 'count_words' do 
  it "Give a string and return the quantity of words" do
    result = count_words("In this project you will build personal diary system")
    expect(result).to eq 9
  end

  it "Give a string and return words, excluding symbols and numbers" do
    result = count_words("I Love Ruby <3 !!")
    expect(result).to eq 3
  end

end