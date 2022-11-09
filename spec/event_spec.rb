require './lib/food_truck'
require './lib/item'
require './lib/event'

RSpec.describe Event do
  before :each do
    @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    @food_truck = FoodTruck.new('Rocky Mountain Pies')
    @event = Event.new('South Pearl Street Farmers Market')
  end

  it 'exists and has attributes' do
    expect(@event).to be_a Event
    expect(@event.name).to eq('South Pearl Street Farmers Market')
    expect(@event.food_trucks).to eq([])
  end
end