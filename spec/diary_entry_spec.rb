=begin
 1. Describe the problem
    - The user needs a program that receive a title, contents, words per minutes and minutes to read.
 
 2. Design the Class Interface
    Class: DiaryEntry
    Methods: 
      initialize : receive title and contents (both strings)
      title: returns title(string)
      contents: return contents (string)
      count_words: return the number of words in the content (integer)
      reading_time: receives wpm (integer) and return the number os words in the content (integer)
      reading_chunk: reveive wpm and minutes as integers and return a string (piece of the text that can be read in those minutes)

      side effect: reading_time method if it is called again will return the next chunk.

 3. Examples:
    DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")

    title =>"Snow white"
    contents => "She is a white girl with seven dwarves friends
    count_words => 9
    reading_time (2) => 9/2 = 5 (minutes)
    reading_chunk => (wpm = 2, min = 5) => (10 words) "reveive wpm and minutes as integers and return a string "
=end

require 'diary_entry'

describe DiaryEntry do
  it "return the title" do
    book = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
    result = book.title
    expect(result).to eq "Snow White"
  end
  
  it "return the contents" do
    content = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
    result = content.contents
    expect(result).to eq "She is a white girl with seven dwarves friends"
  end

  it "return the total of words in the contents" do 
    total_words = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
    result = total_words.count_words
    expect(result).to eq 9
  end

  it "return the total of reading time" do
    time = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
    result = time.reading_time(2)
    expect(result).to eq 5
  end

  it "return the chunk of the text" do 
    chunk = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
    result = chunk.reading_chunk(2, 1)
    expect(result).to eq "She is"
  end

  it "return the chunk of the text when the remainder words to read is less than words per minute" do 
    chunk = DiaryEntry.new("Snow White", "She is a white girl with seven dwarves friends")
    result = chunk.reading_chunk(6, 1)
    result_1 = chunk.reading_chunk(6, 1)
    expect(result_1).to eq "seven dwarves friends"
  end
end
