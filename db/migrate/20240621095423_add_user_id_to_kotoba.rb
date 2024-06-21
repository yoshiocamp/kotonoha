class AddUserIdToKotoba < ActiveRecord::Migration[7.0]
  def change
    add_column :kotobas, :user_id, :integer
  end
end
