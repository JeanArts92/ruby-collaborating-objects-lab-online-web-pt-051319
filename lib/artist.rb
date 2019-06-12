class Artist 
  attr_accessor :name
   
  @@all = []
  
  def initialize(name)
    @name = name
  end 
  
  def self.all
    @@all
  end 
  
  def save
    self.class.all << self
  end
  
  def add_song(song)
    song = Song.new(song)
    self.class.all << self 
    song 
  end
    
  
end 