=begin
1. The Problem
    given a text, check if the text begins with capital letter and ends with sentence-ending punctuation mark
    also return an integer the percentage of texts checked so far that passes (true) in the check method

2. Design the method
    method initialize = define the variables
    method check = receive an string as parameter = check the text
    method percentage_good = check how many trues so far from the previous method.

3. Examples
    a) The sky is blue! => true , 100
    b) The sky is blue 
       The sky is blue? => false, true , 50
    c) the sky is blue
       the sky is blue?
       The sky is blue. => false, false, true, 33
=end

require 'grammar_stats'

describe GrammarStats do
    it 'fails' do 
      text = GrammarStats.new
      expect {text.check("")}.to raise_error 'Nothing to check'
    end

    it "one text checked and it's correct" do
      text = GrammarStats.new
      result_1 = text.check("The sky is blue!")
      expect(result_1).to eq true
    end

    it "one text checked and it's correct" do
      text = GrammarStats.new 
      result_1 = text.check('The sky is blue!')
      result_2 = text.percentage_good
      expect(result_1).to eq true
      expect(result_2).to eq 100
    end

    it "four texts checked and one is correct" do
      text = GrammarStats.new
      result_1 = text.check("The sky is blue!")
      result_2 = text.check("the sky is blue!")
      result_3 = text.check("The sky is blue")
      result_4 = text.check("The sky is blue")
      result_5 = text.percentage_good
      expect(result_1).to eq true
      expect(result_2).to eq false
      expect(result_3).to eq false
      expect(result_4).to eq false
      expect(result_5).to eq 25
    end

end