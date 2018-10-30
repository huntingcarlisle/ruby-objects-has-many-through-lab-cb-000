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
   new_song = Song.new(name, self, genre)
   @songs << new_song
   @genres << genre
  end
  
  def songs
    return Song.all.collect{|song|song.artist == self}
  end
  
  def genres
    return Genre.all.collect{|genre|genre.artist == self}
  end
  
end