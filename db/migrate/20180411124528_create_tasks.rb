class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :attachment
      t.string :title
      t.integer :employee_id
	  t.string	:start_date 
	  t.string :due_date 
	  t.string :estimated_hour 
	  t.string :progress 
	  t.string :status 
	  t.string :description
      t.timestamps
    end
  end
end
