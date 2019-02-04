class DropUserMachinesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_machines
  end
end
