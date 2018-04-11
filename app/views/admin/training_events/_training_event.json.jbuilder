json.extract! training_event, :id, :training_type, :subject, :nature_of_training, :title, :location, :sponsored_by, :organized_by, :training_from, :training_to, :employee_id, :trainer_id, :status, :created_at, :updated_at
json.url training_event_url(training_event, format: :json)
