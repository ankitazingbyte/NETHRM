class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.integer :employee_id
      t.string :training_from
      t.string :training_to
      t.string :location
      t.string :sponsored_by
      t.string :organized_by
      t.string :description
      t.string :training_type
      t.string :training_subject
      t.string :nature
      t.string :title
      t.integer :trainer_id

      t.timestamps
    end
  end
end
