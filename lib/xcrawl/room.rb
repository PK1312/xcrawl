class Room
  attr_accessor :location, :size
  
  def initialize (x,y)
    @size = [x,y]
  end
  
  def include?(object)
    x_range = (@location[0])..(@location[0] + @size[0])
    y_range = (@location[1])..(@location[1] + @size[1])
    x_range.include?(object.location[0]) && y_range.include?(object.location[1])
  end
  
end