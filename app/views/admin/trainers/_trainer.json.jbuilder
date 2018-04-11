json.extract! trainer, :id, :first_name, :lastname, :designation, :organization, :address, :city, :state, :zip_code, :country, :email, :phone, :trainer_expertise, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
