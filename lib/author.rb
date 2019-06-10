class Author

  @@post_count = 0
  @@all = []

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def self.name
    @name
  end

  def posts
    @posts
  end

  # def add_post_by_title(title)
  #   title = Post.new(title)
  #   title.author = self
  #   @@post_count += 1
  # end

  def add_post_by_title(title)
    s = Post.new(title)
    self.add_post(s)
    s

  end


  def self.post_count
    @@post_count
  end
end
