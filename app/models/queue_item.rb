class QueueItem

  attr_accessor :movie, :viewer, :rating
  @@queue_items = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@queue_items << self
  end


  def self.all
    @@queue_items
  end
end
