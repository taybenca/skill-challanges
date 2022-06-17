=begin
1. Describe the problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design
Class: 
    TrackMusic
Method:
    initialize(): @list_of_songs =[]
    add_song(song): song = string => add a song in a list_of_songs (array)
    show: return the list_of_song

3. Examples
    a) add_song("Rose")
       show => ["Rose"]

    b) add_song("Rose")
       add_song("Pink")
       add_song("Blue")
       show =>  ["Rose", "Pink", "Blue"]
    
    c) add_song("") 
    show => error

=end

require 'track_music'

describe TrackMusic do 
  it 'fail' do 
    song = TrackMusic.new
    expect { song.add_song("")}.to raise_error 'There are no songs to add'
  end

  it "the user add one song and return the list with that song" do 
    song = TrackMusic.new
    song.add_song("Rose")
    result = song.show
    expect(result).to eq ["Rose"]
  end 

  it "the user add more songs and return the list with song" do 
    song = TrackMusic.new
    song.add_song("Rose")
    song.add_song("Pink")
    song.add_song("Blue")
    result = song.show
    expect(result).to eq ["Rose", "Pink", "Blue"]
  end

end