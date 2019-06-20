class Post 
  attr_accessor :name, :title

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def author_name
  end

  def self.all
    @@all
  end
end
