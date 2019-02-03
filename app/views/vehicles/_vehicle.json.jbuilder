json.extract! vehicle, :id, :vehicle_type, :reg_no, :availability, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
