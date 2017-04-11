json.extract! booking, :id, :user_id, :room_id, :start_date, :end_date, :guest_number, :created_at, :updated_at
json.url booking_url(booking, format: :json)
