class Author 
  attr_accessor :name, :posts
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post (new_post)
    @posts << new_post
     new_post.author = self
    @@post_count += 1 
  end
  
 def posts
    @posts
  end

  def add_post_by_title(post_name)
    self.add_post(Post.new(post_name))
    end
    

def self.post_count
  @@post_count
end 

end