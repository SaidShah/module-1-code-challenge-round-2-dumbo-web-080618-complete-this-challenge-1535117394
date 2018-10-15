require "pry"

class Viewer
  attr_accessor :username, :movie

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_movies
      QueueItem.all.select do |each_movie|
      each_movie.movie == self.movie
    end
  end

  def queue_items
    QueueItem.all.select do |each_item|
      each_item.viewer == self
    end
  end

  def add_movie_to_queue(given_movie)
     QueueItem.new(self,given_movie)
  end

  def rate_movie(movie, rating)
    my_movie = QueueItem.all.find {|each_item| each_item.viewer == self && each_item.movie == movie}
    my_movie == nil ? QueueItem.new(self,movie,rating) : my_movie.rating = rating
  end


end
