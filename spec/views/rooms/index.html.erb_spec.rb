require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :title => "Title",
        :description => "MyText",
        :price => 2,
        :capacity => 3,
        :bathrooms => 4,
        :pets => false,
        :smoking => false,
        :bath => false,
        :wifi => false,
        :share => false,
        :parties => false,
        :user => nil
      ),
      Room.create!(
        :title => "Title",
        :description => "MyText",
        :price => 2,
        :capacity => 3,
        :bathrooms => 4,
        :pets => false,
        :smoking => false,
        :bath => false,
        :wifi => false,
        :share => false,
        :parties => false,
        :user => nil
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
