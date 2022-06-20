require 'class_diary'
require 'class_diary_entry'

describe "Diary entry integration" do
  context 'after adding some entries' do
    it 'gets all instances of DiaryEntry' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Introduction", "This is an introduction of the article")
      entry_2 = DiaryEntry.new("Description", "Now we have a description of the article")
      diary.add(entry_1)
      diary.add(entry_2)
      result = diary.all
      expect(result).to eq [entry_1, entry_2]
    end

    it 'count all the words in the contents' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Introduction", "This is an introduction of the article")
      entry_2 = DiaryEntry.new("Description", "Now we have a description of the article")
      diary.add(entry_1)
      diary.add(entry_2)
      result = diary.count_words
      expect(result).to eq 15
    end

    it 'return 0 if there is no content' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Introduction", "")
      diary.add(entry_1)
      result = diary.count_words
      expect(result).to eq 0
    end

    it 'return nil for #find_best_entry' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Introduction", "This is an introduction of the article")
      diary.add(entry_1)
      result = diary.find_best_entry_for_reading_time(1,1)
      expect(result).to eq nil
    end
    
    it 'return the best entry when we have one entry' do 
      diary = Diary.new
      entry_1 = DiaryEntry.new("Introduction", "This is an introduction of the article")
      diary.add(entry_1)
      result = diary.find_best_entry_for_reading_time(2,5)
      expect(result).to eq entry_1
    end
    
    it 'return the best entry when we have more entries' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Introduction", "This is an introduction of the article")
      entry_2 = DiaryEntry.new("Description", "Now we have a description of the article")
      diary.add(entry_1)
      diary.add(entry_2)
      result = diary.find_best_entry_for_reading_time(2,4)
      expect(result).to eq entry_2
    end
  end
end
    