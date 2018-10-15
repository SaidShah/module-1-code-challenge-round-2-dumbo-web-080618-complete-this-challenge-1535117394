require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tom = Viewer.new("Tom")
mike = Viewer.new("Mike")
alex = Viewer.new("alex")
john = Viewer.new("john")

titanic = Movie.new("Titanic")
fast = Movie.new("Fast and Furious")
mip = Movie.new("Mission Impossible")
fast5 = Movie.new("Fast 5")

tom.add_movie_to_queue(fast)
tom.add_movie_to_queue(mip)

alex.add_movie_to_queue(mip)
alex.add_movie_to_queue(fast5)

john.add_movie_to_queue(titanic)
john.add_movie_to_queue(fast)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
