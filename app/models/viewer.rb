class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    #self.class.all << self
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|qi| qi.viewer == self}
  end

  def queue_movies
    queue_items.map { |qi| qi.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self,movie)
  end

  def rate_movie(movie, rating)
    if queue_movies.include?(movie)
      qm= queue_items.find {|qi| qi.movie== movie}
      qm.rating =rating
    else
      QueueItem.new(self,movie,rating)
    end
  end
end
