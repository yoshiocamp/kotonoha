class CreateKotobas < ActiveRecord::Migration[7.0]
  def change
    create_table :kotobas do |t|

      t.timestamps
    end
  end
end
