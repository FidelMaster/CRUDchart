class AddprimaryKeyToProviders < ActiveRecord::Migration[5.0]
  
  def change
    execute "ALTER TABLE providers ADD PRIMARY KEY (id);"
  end
end
