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
    (count_words.to_f/wpm).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    possible_entries = []
    count = 0
    best_entry = nil
    @entries.each do |entry|
      if entry.count_words <= minutes * wpm
        possible_entries << entry
      end
    end
    possible_entries.each do |entry|
      if entry.count_words > count
        best_entry = entry
      end
    end
    return best_entry
  end
end