class Artist

  @@song_count = 0

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.name
    @name
  end

  def songs
    @songs
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    s = Song.new(name)
    self.add_song(s)
    s

  end

  def self.song_count
    @@song_count
  end


end
