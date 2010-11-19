class Map
  def initialize
    @roomlist = []
  end
  
  def add_room(room, x, y)
    room.location = [x, y]
    @roomlist << [room, x, y]
  end
  
  def room_at? (x, y)
    @roomlist.each do |entry|
      room = entry.first
      return true if room.include_coord?(x, y)
    end
    return false
  end
end