json.extract! expense, :id, :item_name, :purchase_from, :purchase_date, :amount, :status, :attachment, :employee_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
