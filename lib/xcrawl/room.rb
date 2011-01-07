module XCrawl
  class Room
    attr_accessor :location, :size
    
    def initialize (x,y)
      @size = [x,y]
    end
    
    def include_coord? (x, y)
      x_range = (@location[0])..(@location[0] + @size[0])
      y_range = (@location[1])..(@location[1] + @size[1])
      x_range.include?(x) && y_range.include?(y)
    end
    
    def include?(object)
      include_coord?(object.location[0], object.location[1])
    end
    
    def add_item(item, x, y)
      item.location = [x,y]
    end 
  end
end