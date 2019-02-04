class RenameLocationMachinestoMachines < ActiveRecord::Migration[5.2]
  def change
    rename_table :location_machines, :machines
  end
end
