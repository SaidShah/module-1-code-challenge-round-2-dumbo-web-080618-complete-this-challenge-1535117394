class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |each_item|
      each_item.movie == self
    end
  end

  def viewers
    all_viewers = []
    QueueItem.all.select do |each_viewer|
    if  each_viewer.movie == self
        all_viewers << each_viewer.viewer
      end
    end
    all_viewers
  end

  def average_rating
    average = 0
    QueueItem.all.map do |each_movie|
      average += each_movie.rating if each_movie.rating != nil
      end
    return average/Movie.all.count
  end



end
