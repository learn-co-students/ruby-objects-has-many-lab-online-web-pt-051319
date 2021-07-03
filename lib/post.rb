require 'pry'

class Post

  attr_accessor :name, :author, :title

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def author_name
      self.author.nil? ? nil : self.author.name
    end

    def title
      self.name
    end

  end
