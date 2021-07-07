class Author
  attr_accessor :name, :posts

   @@post_count = 0
 
  def initialize(name)
    @name = name
    @posts = []
  end
 
  def add_post(post)
    @@post_count +=1
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title_of_post)
    p1 =Post.new(title_of_post)
    self.add_post(p1)
    p1
  
  end
  
  def self.post_count
    @@post_count
  end
  
end