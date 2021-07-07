class Author 
  attr_accessor :name
 
  @@all_posts = []
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post(new_post)
    @posts << new_post 
    @@all_posts << self 
    new_post.author = self 
  end 
  
  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title 
    @@all_posts << self 
    title.author = self
  end 
  
  def self.post_count 
    @@all_posts.length 
  end 
  
end 