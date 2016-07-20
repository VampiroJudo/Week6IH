class AddRoldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rolestring, :string
  end
end
