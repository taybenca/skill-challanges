def verify_grammar(string)
  fail "There is no string to check" if string.empty?
  characters = string.split("")
  if characters[0] == characters[0].upcase && (characters[-1] == "?" || characters[-1] == "." || characters[-1] == "!") 
    return true
  else
    return false
  end
end