json.extract! ticket, :id, :employee_id, :department_id, :subject, :message, :status, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
