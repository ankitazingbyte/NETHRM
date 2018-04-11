json.extract! task, :id, :attachment, :title, :employee_id, :created_at, :updated_at
json.url task_url(task, format: :json)
