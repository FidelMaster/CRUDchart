class AddprimaryKeyToProducts < ActiveRecord::Migration[5.0]

  
  def change
    execute "ALTER TABLE products ADD PRIMARY KEY (id);"
  end
end
