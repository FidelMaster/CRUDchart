class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers, :id => false  do |t|
      t.integer :id
      t.string :description
      t.timestamps
    end
  end
end
