def encode(plaintext, key)
  cipher = []
  cipher = key.split("").uniq
  p "The cipher is #{cipher}"
  
  to_add = (('a'...'z').to_a - key.chars)
  p "This is what to add: #{to_add}"
  puts to_add.inspect
  
  cipher << to_add
  p "This is the whole array: #{cipher}"
  
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end
  
def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end
  
  # Intended output:
  #
  puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
#puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"