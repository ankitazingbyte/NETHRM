class CreateSalslips < ActiveRecord::Migration[5.1]
  def change
    create_table :salslips do |t|
      t.integer :employee_id
      t.integer :increament_id
      t.integer :department_id
      t.integer :designation_id
      t.string  :basic_salary
      t.string  :payment_by
      t.string   :tax     
      t.string   :provident_fund
      t.string   :loan
      t.integer :Leave_deduction
      t.string :grand_total

      t.timestamps
    end
  end
end
