class CreateTaskFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :task_files do |t|
      t.string :attachment
      t.string :title
      t.integer :employee_id

      t.timestamps
    end
  end
end
