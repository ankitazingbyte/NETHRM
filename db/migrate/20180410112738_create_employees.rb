class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :image
      t.string :first_name
      t.string :last_name
      t.string :mother
      t.string :father
      t.string :employee_code
      t.string :user_name
      t.string :date_of_join
      t.string :date_of_leave
      t.string :date_of_birth
      t.string :phone
      t.string :alternative_phone
      t.string :status
      t.string :present_address
      t.string :permanent_address
      t.integer :department_id
      t.integer :designation_id
      t.string :gender
      t.string :tax_example
      t.integer :employee_role_id
      t.integer :user_id

      t.timestamps
    end
  end
end
