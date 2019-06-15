class Artist 
  
  attr_accessor :name, :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def add_song(song)
    @@song_count +=1
    @songs << song  #has many 
    song.artist = self #belongs to relationship
  end
  
  def add_song_by_name(name)
    s = Song.new(name)
    self.add_song(s)
    s
  end
  
  def song_count
    self.songs.size 
  end
  
  def self.song_count
     @@song_count
   end
end


# a= Artist.new 
# a.songs.<<(Song.new)     Lin 18 and 19 are the same
# a.songs.push(Song.new)
# a.add_song(Song.new)