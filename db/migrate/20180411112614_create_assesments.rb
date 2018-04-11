class CreateAssesments < ActiveRecord::Migration[5.1]
  def change
    create_table :assesments do |t|
      t.integer :department_id
      t.string :training_type
      t.string :training_subject
      t.string :nature_of_training
      t.string :training_title
      t.integer :employee_id
      t.string :training_reason
      t.integer :trainer_id
      t.string :location
      t.string :start_date
      t.string :end_date
      t.string :training_cost
      t.string :travel_cost
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
