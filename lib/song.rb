require 'pry'

class Song

  attr_accessor :name, :artist

    @@all = []

    def initialize(name)
      @name = name
      @@all << name
    end

    def self.all
      @@all
    end

    def artist_name
        self.artist.nil? ? nil : self.artist.name
    end
end
