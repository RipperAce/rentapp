json.extract! booking_details, :id, :date_from, :date_to, :rent_per_day, :created_at, :updated_at
json.url booking_details_url(booking_details, format: :json)
