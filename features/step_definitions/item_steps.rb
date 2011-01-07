Given /^there is an item$/ do
  @item = Item.new
end

When /^the item is placed in a room$/ do
  @room ||= Room.new(10,10)
  @room.location = [0,0]
  @room.add_item(@item, 2, 3)
end

Then /^the item should be in the room$/ do
  @room.include?(@item).should be_true
end