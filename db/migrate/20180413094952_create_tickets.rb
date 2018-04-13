class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :employee_id
      t.integer :department_id
      t.string :subject
      t.string :message
      t.string :status

      t.timestamps
    end
  end
end
