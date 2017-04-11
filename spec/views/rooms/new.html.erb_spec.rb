require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :title => "MyString",
      :description => "MyText",
      :price => 1,
      :capacity => 1,
      :bathrooms => 1,
      :pets => false,
      :smoking => false,
      :bath => false,
      :wifi => false,
      :share => false,
      :parties => false,
      :user => nil
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_title[name=?]", "room[title]"

      assert_select "textarea#room_description[name=?]", "room[description]"

      assert_select "input#room_price[name=?]", "room[price]"

      assert_select "input#room_capacity[name=?]", "room[capacity]"

      assert_select "input#room_bathrooms[name=?]", "room[bathrooms]"

      assert_select "input#room_pets[name=?]", "room[pets]"

      assert_select "input#room_smoking[name=?]", "room[smoking]"

      assert_select "input#room_bath[name=?]", "room[bath]"

      assert_select "input#room_wifi[name=?]", "room[wifi]"

      assert_select "input#room_share[name=?]", "room[share]"

      assert_select "input#room_parties[name=?]", "room[parties]"

      assert_select "input#room_user_id[name=?]", "room[user_id]"
    end
  end
end
