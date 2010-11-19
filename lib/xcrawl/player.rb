class Player
  attr_accessor :location, :speed
  
  SPAWN_POINT = [5, 5]
  BASE_SPEED = 10
  
  def initialize
    @location = SPAWN_POINT.dup
    @speed = BASE_SPEED
  end
  
  def move_north!
    @location[1] += @speed
  end
  
  def move_south!
    @location[1] -= @speed
  end
  
  def move_east!
    @location[0] += @speed
  end
  
  def move_west!
    @location[0] -= @speed
  end
end