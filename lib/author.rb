require 'pry'

class Author

  attr_accessor :name, :post, :title

    def initialize(name)
      @name = name
      @posts = []
    end

    def posts
      @posts
    end

    def add_post(post)
      @posts << post
      post.author = self
    end

    def add_post_by_title(post)
        post = Post.new(post)
        @posts << post
        posts.each {|name| post.author = self}
        binding.pry
    end

    def self.post_count
    Post.all.length
    end

end
