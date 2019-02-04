class RenameMachineIssuesColumnForMachineId < ActiveRecord::Migration[5.2]
  def change
    rename_column :machine_issues, :location_machine_id, :machine_id
  end
end
