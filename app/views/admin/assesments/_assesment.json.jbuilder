json.extract! assesment, :id, :department_id, :training_type, :training_subject, :nature_of_training, :training_title, :employee_id, :training_reason, :trainer_id, :location, :start_date, :end_date, :training_cost, :travel_cost, :status, :description, :created_at, :updated_at
json.url assesment_url(assesment, format: :json)
