class AddprimaryKeyToPresentations < ActiveRecord::Migration[5.0]
  def change
    execute "ALTER TABLE presentations ADD PRIMARY KEY (id);"
  end
end
