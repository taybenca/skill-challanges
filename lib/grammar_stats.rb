class GrammarStats
  def initialize
    @trues_and_falses = []
  end

  def check(text)
    fail "Nothing to check" if text.empty?
    characters = text.split("")
    if characters[0] == characters[0].upcase && (characters[-1] == "!" || characters[-1] == "." || characters[-1] == "?")
      @trues_and_falses << "true"
      return true
    else 
      @trues_and_falses << "false"
      return false
    end
  end

  def percentage_good
    @trues_and_falses.count("true") * 100 / (@trues_and_falses.length)
  end
end

result = GrammarStats.new
result.check("The sky is blue!")
result.check("the sky is blue!")
result.check("The sky is blue")
result.check("The sky is blue")
puts result.percentage_good.inspect
