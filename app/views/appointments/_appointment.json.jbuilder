json.extract! appointment, :id, :appointment_date, :worker_id, :medical_center_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
