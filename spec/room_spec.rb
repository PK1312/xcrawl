require 'spec_helper'

describe Room do
  describe '#initialize' do
    it 'sets the location of a room' do
      room = Room.new(5,5)
      room.size.should == [5,5]
    end
  end

  describe '#include_coord?' do
    it 'returns true for coordinates in the room' do
      room = Room.new(5,5)
      room.location = [0,0]
      room.include_coord?(2,3).should be_true
    end

    it 'returns false for coordinates not in the room' do
      room = Room.new(5,5)
      room.location = [0,0]
      room.include_coord?(2,1_000_000_000).should be_false
    end
  end

  describe '#include?' do
    it 'returns true for objects in the room' do
      room = Room.new(5,5)
      room.location = [0,0]
      object = double('object')
      object.stub(:location) { [2,3] }
      room.include?(object).should be_true
    end
    it 'returns false for objects not in the room' do
      room = Room.new(5,5)
      room.location = [0,0]
      object = double('object')
      object.stub(:location) { [2,1_000_000_000] }
      room.include?(object).should be_false
    end
  end
end