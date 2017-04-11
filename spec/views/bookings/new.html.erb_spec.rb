require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :user => nil,
      :room => nil,
      :guest_number => 1
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_room_id[name=?]", "booking[room_id]"

      assert_select "input#booking_guest_number[name=?]", "booking[guest_number]"
    end
  end
end
