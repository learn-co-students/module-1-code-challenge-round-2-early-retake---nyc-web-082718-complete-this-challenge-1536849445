class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|qi| qi.movie ==self}
  end

  def viewers
    queue_items.map {|qi| qi.viewer}
  end

  def average_rating
    total=queue_items.length
    total_score= 0.to_f
    queue_items.each {|qi| total_score += qi.rating}
    avg= total_score/total
  end

  def self.highest_rated
    top_rated=self.all.map {|m| m.average_rating}.sort.reverse[0]
    self.all.find{|m| m.average_rating == top_rated}
  end

end
