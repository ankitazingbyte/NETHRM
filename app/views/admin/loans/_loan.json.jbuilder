json.extract! loan, :id, :employee_id, :title, :loan_date, :loan_amount, :monthly_payement, :repayment_start_date, :status, :description, :created_at, :updated_at
json.url loan_url(loan, format: :json)
