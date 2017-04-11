require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :user => nil,
      :room => nil,
      :guest_number => 1
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_room_id[name=?]", "booking[room_id]"

      assert_select "input#booking_guest_number[name=?]", "booking[guest_number]"
    end
  end
end
