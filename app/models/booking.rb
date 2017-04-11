class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  scope :approved, -> { where(approved: true, paid: false) }
  scope :paid, -> {where(paid: true)}
  scope :pending, -> { where(approved: false) }
end
