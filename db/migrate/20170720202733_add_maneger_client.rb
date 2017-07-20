class AddManegerClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :manager_id, :integer
  end
end
