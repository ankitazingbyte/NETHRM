json.extract! bank, :id, :name, :branch_name, :account_name, :account_number, :ifsc_code, :pan_number, :created_at, :updated_at
json.url bank_url(bank, format: :json)
