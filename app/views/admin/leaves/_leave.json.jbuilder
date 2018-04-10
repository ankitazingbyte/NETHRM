json.extract! leave, :id, :employee_id, :leave_type, :leave_from, :leave_to, :status, :reason, :created_at, :updated_at
json.url leave_url(leave, format: :json)
