module XCrawl
  module Location
    def self.include(klass)
      klass.send(:attr_accessor, :location)
    end
    
    def x_location
      @location[0]
    end
    
    def x_location=(new_x)
      @location ||= []
      @location[0] = new_x
    end
    
    def y_location
      @location ||= []
      @location[1]
    end
    
    def y_location=(new_y)
      @location[1] = new_y
    end
  end
end