class CreateJobapps < ActiveRecord::Migration[5.1]
  def change
    create_table :jobapps do |t|
      t.integer :designation_id
      t.string :number_of_post
      t.string :job_type
      t.string :experience
      t.string :age
      t.string :job_location
      t.string :salary
      t.string :post_date
      t.string :last_date_to_apply
      t.string :close_date
      t.string :status
      t.string :short_description
      t.string :description

      t.timestamps
    end
  end
end
