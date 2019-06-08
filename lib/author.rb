class Author
  attr_accessor :name
    @@all = []
    @posts = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end
end
