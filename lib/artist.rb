class Artist
  attr_accessor :name, :songs, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_song(name, genre)
   new_song_genre = Genre.new(genre)
   new_song = Song.new(name, self, new_song_genre)
   @songs << new_song
   @genres << new_song_genre
  end
  
end