class AddDeleteCountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :delete_count, :integer
  end
end
