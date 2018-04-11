class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
