class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  aftre_create :update_booking

  def update_booking
    booking.update_attributes(paied: true)
end
