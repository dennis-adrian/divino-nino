json.extract! patient, :id, :identification, :first_name, :last_name, :birth_date, :sex, :email, :phone, :address, :blood_type, :weight, :height, :is_pregnant, :menstruation_date, :has_menopause, :has_reservation, :last_medical_appointment, :created_at, :updated_at
json.url patient_url(patient, format: :json)
