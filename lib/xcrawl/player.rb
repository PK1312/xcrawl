module XCrawl
  class Player
    include Location
    
    attr_accessor :speed
    
    SPAWN_POINT = [5, 5]
    BASE_SPEED = 10
    
    def initialize
      @location = SPAWN_POINT.dup
      @speed = BASE_SPEED
    end
    
    def move_north!
      self.y_location += @speed
    end
    
    def move_south!
      self.y_location -= @speed
    end
    
    def move_east!
      self.x_location += @speed
    end
    
    def move_west!
      self.x_location -= @speed
    end
  end
end