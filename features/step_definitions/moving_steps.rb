World do
  @player = Player.new
  @player.location = [5, 5]
end

Given /^there is a map$/ do
  @map = Map.new
end

Given /^I am in a room$/ do
  @this_room = Room.new(10, 10)
  @map.add_room(@this_room, 0, 0)
end

Given /^there is a room to the north$/ do
  @new_room = Room.new(10, 10)
  @map.add_room(@new_room, 10, 0)
end

When /^I move north$/ do  
  @player.location[0] += 10
end

Then /^I should be in that room$/ do
  @new_room.contains?(@player).should be_true
end