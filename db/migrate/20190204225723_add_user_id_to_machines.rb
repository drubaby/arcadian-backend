class AddUserIdToMachines < ActiveRecord::Migration[5.2]
  def change
    add_column :machines, :user_id, :integer, :default => nil
  end
end
