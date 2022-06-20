require 'class_diary'

describe Diary do 
  context 'initially' do
    it 'has an empty list of entries' do
      diary = Diary.new
      result = diary.all
      expect(result).to eq []
    end
  end
end
