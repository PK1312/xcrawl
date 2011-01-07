require 'spec_helper'

describe Player do
  describe '#initialize' do
    it 'spawns at predefined spawn point' do
      player = Player.new
      player.location.should == Player::SPAWN_POINT
    
    end
  end

  describe '#move_north!' do
    it 'moves the player north' do
      player = Player.new
      player.location = [0, 0]
      player.move_north!
      player.location.should == [0, 10]
    end
  end
  
  describe '#move_south!' do
    it 'moves the player south' do
      player = Player.new
      player.location = [0, 0]
      player.move_north!
      player.location.should == [0, -10]
    end
  end
  
  describe '#move_east!' do
    it 'moves the player east' do
      player = Player.new
      player.location = [0, 0]
      player.move_north!
      player.location.should == [10, 0]
      
      describe '#move_west!' do
    it 'moves the player west' do
      player = Player.new
      player.location = [0, 0]
      player.move_north!
      player.location.should == [-10, 0]
    end
  end
end