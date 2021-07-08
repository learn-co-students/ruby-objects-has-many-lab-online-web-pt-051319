class Author
  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def posts
    @posts
  end

  def self.post_count
    @@posts.length
  end
end
