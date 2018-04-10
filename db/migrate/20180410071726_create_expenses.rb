class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :item_name
      t.string :purchase_from
      t.string :purchase_date
      t.integer :amount
      t.string :status
      t.string :attachment
      t.integer :employee_id

      t.timestamps
    end
  end
end
