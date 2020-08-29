require 'pry'

class Author
  attr_reader :name, :posts

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts << post
  end

  def name
    @name || nil
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@posts << post
  end

  def self.post_count
    @@posts.length
  end
end
