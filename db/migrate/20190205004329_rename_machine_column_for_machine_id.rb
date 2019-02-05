class RenameMachineColumnForMachineId < ActiveRecord::Migration[5.2]
  def change
    rename_column :machines, :machine_id, :machine_type_id
  end
end
