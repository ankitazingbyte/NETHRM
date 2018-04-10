class CreateAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :awards do |t|
      t.string :name
      t.integer :employee_id
      t.string :gift_item
      t.string :cash_price
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
