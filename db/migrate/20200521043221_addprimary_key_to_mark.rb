class AddprimaryKeyToMark < ActiveRecord::Migration[5.0]
  def change
    execute "ALTER TABLE tradmarks ADD PRIMARY KEY (id);"
  end
end
