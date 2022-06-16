class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @current_index = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm)
    (count_words.to_f/2).ceil
  end

  def reading_chunk(wpm, minutes)
    words = @contents.split(" ")
    words_to_read = wpm * minutes
    old_index = @current_index
    # how to print the next chunk
    if (@current_index + words_to_read) < count_words
      @current_index += words_to_read  
      return words[old_index...@current_index].join(" ")
    else
      return words[@current_index..-1].join(" ")
    end


 
    #how print the last word if the length is not multiple per wpm


   
  end
end

chunk = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
puts chunk.reading_chunk(6, 1)
puts chunk.reading_chunk(6, 1)
# puts chunk.reading_chunk(2, 1)
# puts chunk.reading_chunk(2, 1)
# puts chunk.reading_chunk(2, 1)


