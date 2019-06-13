require 'pry'
class Author

  attr_accessor :name
  @@all = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @@all += 1
    self.posts << post
    post.author = self
    post
  end

  def posts
    @posts
  end

  def add_post_by_title(post_title)
    @@all += 1
    new_post = Post.new(post_title)
    new_post.author = self
    self.posts << new_post
    new_post
  end


  def self.post_count
    @@all
  end

end
