require 'pry'

class Post
  
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title, author = nil)
    @title = title
    @author = author
    #binding.pry 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    self.author.name if self.author
  end
  
end