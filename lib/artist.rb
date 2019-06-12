class Artist 
  attr_accessor :name, :songs
   
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def self.all
    @@all
  end 
  
  def save
    self.class.all << self
  end
  
  def add_song
    artist.songs << self
  end
    
  
end 