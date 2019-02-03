json.extract! user, :id, :user_name, :address, :contact, :aadhar_no, :license, :created_at, :updated_at
json.url user_url(user, format: :json)
