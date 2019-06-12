class MP3Importer
attr_accessor :path 
  
def initialize(path)
  @path = path
end 

def files
Dir.entries(path).filter { |filename| filename
end 

end 