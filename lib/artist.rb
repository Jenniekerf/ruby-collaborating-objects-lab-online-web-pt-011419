require "pry"

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def songs 
    @songs
  end
  
  def add_song(song)
   song.artist = self
   @songs << song
  end
  
  def self.all 
    @@all 
  end
  
  def save
    @@all
  end
  
  def self.create_by_name(name)
    song = self.new(name)
    song.name = name
    song
  end
  
  def self.find_by_name(name)
   @@all.find {|title| title.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def print_songs
  @songs.map {|songs| puts songs.name}
  end
  
end