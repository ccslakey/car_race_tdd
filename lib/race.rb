require_relative 'car'

class Race
  attr_accessor(:cars, :winner, :loser, :me, :you)
  def initialize
  	#init and throw into array => :cars
  	@cars = []
  	@me = Car.new
  	@you = Car.new
  	@cars.push(me, you)
  	#Race!!
  	me.accelerate(rand(500)+1)
  	you.accelerate(rand(500)+1)
   end
   
   def winner
     (cars[0].speed > cars[1].speed) ? @winner = @me : @winner = @you
     return @winner
   end

   def loser
   		(cars[0].speed < cars[1].speed) ? @loser = @me : @loser = @you
   end

end
race = Race.new