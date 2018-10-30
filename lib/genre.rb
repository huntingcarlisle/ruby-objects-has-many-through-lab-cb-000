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
    
  
end