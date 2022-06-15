def count_words(text)
    fail "There is no words to count" if text.empty?
    text.gsub!(/[^A-Za-z ]/, '')
    puts text
    words = text.split(" ")
    return words.count
end