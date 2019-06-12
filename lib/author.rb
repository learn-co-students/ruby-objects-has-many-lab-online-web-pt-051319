class Author
  attr_accessor :name

  @@p_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@p_count +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@p_count +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@p_count
  end
end
