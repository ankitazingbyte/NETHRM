json.extract! training, :id, :employee_id, :training_from, :training_to, :location, :sponsored_by, :organized_by, :description, :training_type, :training_subject, :nature, :title, :trainer_id, :created_at, :updated_at
json.url training_url(training, format: :json)
