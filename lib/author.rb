class Author
  attr_accessor :name, :posts

  def initialize (name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Posts.all.select {|post| post.author == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end
