class Song
    attr_accessor :artist, :name
   
  @@all = []
  def initialize(name)
    
  @name = name 
   @@all << name
    end
    
   def author_name
    self.author ? self.author.name : nil
  end
   
   def self.all
     @@all
   end
end
    