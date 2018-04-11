class CreateTrainers < ActiveRecord::Migration[5.1]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :lastname
      t.string :designation
      t.string :organization
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :email
      t.string :phone
      t.string :trainer_expertise

      t.timestamps
    end
  end
end
