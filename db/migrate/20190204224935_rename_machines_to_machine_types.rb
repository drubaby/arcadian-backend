class RenameMachinesToMachineTypes < ActiveRecord::Migration[5.2]
  def change
    rename_table :machines, :machine_type
  end
end
