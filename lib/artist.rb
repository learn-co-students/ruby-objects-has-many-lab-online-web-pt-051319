require 'pry'

class Artist
  
  attr_accessor :name
  
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
    @@songs << song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@songs << song
  end
  
  def songs
    @songs
  end
  
  def self.song_count
    @@songs.count
  end
  
end