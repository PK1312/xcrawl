class Player
  attr_accessor :location
  
  SPAWN_POINT = [5, 5]
  
  def initialize
    @location = SPAWN_POINT.dup
  end
  
  def move_north
    @location[0] += 10
  end
end