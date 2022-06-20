require 'class_diary_entry'

describe DiaryEntry do
  context 'added entries' do
    it 'add entry and return the title' do
      entry = DiaryEntry.new("Introduction", "This is an introduction")
      result = entry.title
      expect(result).to eq "Introduction"
    end

    it 'add entry and return the content' do
      entry = DiaryEntry.new("Introduction", "This is an introduction")
      result = entry.contents
      expect(result).to eq "This is an introduction"
    end

    it 'add entry and return the quantity of words' do
      entry = DiaryEntry.new("Introduction", "This is an introduction")
      result = entry.count_words
      expect(result).to eq 4
    end

    it 'count_words return zero if content is empty' do
      entry = DiaryEntry.new("My title", "")
      result = entry.count_words
      expect(result).to eq 0
    end

    it 'return the time when the user gives wpm' do
      entry = DiaryEntry.new("Introduction", "This is an introduction")
      result = entry.reading_time(3)
      expect(result).to eq 2
    end

    it 'return the chunk' do
      entry = DiaryEntry.new("Introduction", "This is an introduction")
      result = entry.reading_chunk(3, 1)
      expect(result).to eq "This is an"
    end

    it 'return the chunk' do
      entry = DiaryEntry.new("Introduction", "This is an introduction")
      entry.reading_chunk(3,1)
      result = entry.reading_chunk(3, 1)
      expect(result).to eq "introduction"
    end

  end
end
