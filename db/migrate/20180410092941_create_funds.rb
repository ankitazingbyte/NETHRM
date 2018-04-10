class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.integer :employee_id
      t.string :fund_type
      t.string :employee_share
      t.string :organization_share
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
