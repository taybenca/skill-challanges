def count_words(text)
    text.gsub!(/[^A-Za-z ]/, '')
    puts text
    words = text.split(" ")
    return words.count
end