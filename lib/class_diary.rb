# File: lib/diary.rb
class Diary
  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry
  end

  def all
    return @entries 
  end

  def count_words
    result = []
    @entries.each do |entry|
      result << entry.count_words
    end
    return result.sum
  end

  def reading_time(wpm) 
    (count_words.to_f/2).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end