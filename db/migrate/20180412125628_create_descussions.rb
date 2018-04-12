class CreateDescussions < ActiveRecord::Migration[5.1]
  def change
    create_table :descussions do |t|
      t.string :comment
      t.integer :employee_id

      t.timestamps
    end
  end
end
