def get_most_common_letter(text)
  counter = Hash.new(0)
  p counter
  text.chars.each do |char|
    if char.match?(/[A-Za-z]/)
        counter[char] += 1
    end
  end
   p counter.to_a
  p counter.to_a.sort_by{ |k, v| v }[-1][0]

end
  
  # Intended output:
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"