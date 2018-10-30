class Genre
  attr_accessor :name, :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def songs
    return Song.all.collect{|song|song.artist == self}
  end
  
  def artists
    return Artist.all.collect{|artist|artist.artist == self}
  end
    
  
end