class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :holidays, :occasion, :title
  end
end
