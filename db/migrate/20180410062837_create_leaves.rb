class CreateLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :leaves do |t|
      t.integer :employee_id
      t.string :leave_type
      t.string :leave_from
      t.string :leave_to
      t.string :status
      t.string :reason

      t.timestamps
    end
  end
end
