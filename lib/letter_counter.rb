class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0) # => { }
      most_common = nil
      most_common_count = 1
      # binding.irb
      @text.chars.each do |char|
        next unless is_letter?(char) 
        # the function returns 0 for all chars
        # 0 for D
        # 0 foi i
        # 0 for g
        # 0 for i
        # binding.irb
        counter[char] = (counter[char] || 1) + 1
        # counter[char] = 2 => D
        # counter[char] = 2 => i
        # counter[char] = 2 => g
        # counter[char] = 3 => i
        # counter[char] = 2 => t
        # at this point I changed Hash.new(1) for Hash.new(0)
        # counter[char] = 1 => D
        # counter[char] = 1 => i
        # counter[char] = 1 => g
        # counter[char] = 2 => i
        # counter[char] = 1 => t
        # binding.irb
        if counter[char] > most_common_count
          most_common = char
          most_common_count += counter[char] -1
          
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]