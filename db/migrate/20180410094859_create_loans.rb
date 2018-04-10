class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :employee_id
      t.string :title
      t.string :loan_date
      t.string :loan_amount
      t.string :monthly_payement
      t.string :repayment_start_date
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
