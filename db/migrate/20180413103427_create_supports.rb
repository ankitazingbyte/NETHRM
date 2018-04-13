class CreateSupports < ActiveRecord::Migration[5.1]
  def change
    create_table :supports do |t|
      t.string :name
      t.string :email
      t.string :show_in_client

      t.timestamps
    end
  end
end
