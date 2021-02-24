class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genre  = []
  @@artist = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1 
    @@genre << self 
    @@artist << self 
  end
  
  def self.count 
    @@count 
  end
  
  def self.genre
    @@genre = []
    if @@genre.include?(self)
      return genre
    else
      @@genre << self
    end
  end
end