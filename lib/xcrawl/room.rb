module XCrawl
  class Room
    include Location
    attr_accessor :size
    
    def initialize (x,y)
      @size = [x,y]
    end
    
    def include_coord? (x, y)
      x_range = (self.x_location)..(self.x_location + @size[0])
      y_range = (self.y_location)..(self.y_location + @size[1])
      x_range.include?(x) && y_range.include?(y)
    end
    
    def include?(object)
      include_coord?(object.x_location, object.y_location)
    end
    
    def add_item(item, x, y)
      item.location = [x,y]
    end 
  end
end