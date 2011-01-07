require 'spec_helper'

describe Map do
  describe '#add_room' do
    it 'sets the location of the room' do
      room = Room.new(1,1)
      map = Map.new
      map.add_room(room, 5,6)
      room.location.should == [5,6]
    end
  end
end