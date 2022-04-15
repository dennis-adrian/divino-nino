json.extract! doctor, :id, :identification, :first_name, :last_name, :birth_date, :sex, :email, :phone, :address, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
