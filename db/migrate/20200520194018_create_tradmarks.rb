class CreateTradmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :tradmarks, :id => false  do |t|
      t.integer :id
      t.string :description

      t.timestamps
    end
  end
end
