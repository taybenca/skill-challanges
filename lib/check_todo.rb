def text_checker(text)
  fail "Nothing in the list" if text.empty?
  text.include? "#TODO"
end