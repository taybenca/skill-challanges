class TrackMusic 
  def initialize
    @list_of_songs = []
  end

  def add_song(song)
    fail 'There are no songs to add' if song.empty?
    @list_of_songs << song
  end

  def show
    @list_of_songs
  end

end