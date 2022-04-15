json.extract! schedule, :id, :date, :start_time, :end_time, :is_busy, :doctor_id, :specialty_id, :office_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
