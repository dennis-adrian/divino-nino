json.extract! reservation, :id, :date_made, :patient_id, :schedule_id, :reservation_fee_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
