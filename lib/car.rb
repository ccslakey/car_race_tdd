class Car
  def initialize
  	@speed = 0
  end
  attr_accessor :speed
  def accelerate (amt)
  	@speed += amt
  end
end
