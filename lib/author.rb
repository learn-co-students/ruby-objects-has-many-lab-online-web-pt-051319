class Author 
  attr_accessor :name, :posts
  
  @@post_count =0
  
  def initialize(name)
    @name = name 
    @posts =  [ ]
  end 
  
  def add_post(post)
    @@post_count +=1
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(name)
    s = Post.new(name)
    self.add_post(s)
    s
  end
  
  
  def post_count 
    self.posts.count
  end
    
  def self.post_count
     @@post_count
   end
end 
