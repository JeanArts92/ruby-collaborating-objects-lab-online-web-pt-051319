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
  
  def add_song(song)
    self.songs << song
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end 
  
  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end 
  
  def self.create_by_name(name)
    self.new(name).tap(&:save)
  end 
  
  def print_songs
    songs.map {|song| puts song.name}
  end 
    
  
end 