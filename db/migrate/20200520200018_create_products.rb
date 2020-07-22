class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products, :id => false  do |t|
      t.integer :id
      t.integer :id_provider
      t.integer :id_presentation
      t.integer :id_trademark

      t.timestamps
    end
  end
end
