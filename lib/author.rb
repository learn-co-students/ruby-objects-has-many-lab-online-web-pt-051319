class Author 
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @@all << @name = name
    @posts = []
  end
  
  
  def add_post (apost)
    @posts << apost
    apost.author_name = self
    @@post_count += 1 
  end
  
 def posts.all
    @posts
  end

  def add_post_by_title(post_name)
    add_post(Post).new(post_name))
end

def self.post_count
  @@post_count
end 

end