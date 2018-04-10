class CreateIncreaments < ActiveRecord::Migration[5.1]
  def change
    create_table :increaments do |t|
      t.integer :employee_id
      t.integer :designation_id
      t.string :current_salary
      t.string :increament_salary

      t.timestamps
    end
  end
end
