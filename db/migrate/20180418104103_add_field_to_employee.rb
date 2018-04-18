class AddFieldToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :email, :string
    add_column :employees, :password, :string
    add_column :employees, :confirm_password, :string
  end
end
