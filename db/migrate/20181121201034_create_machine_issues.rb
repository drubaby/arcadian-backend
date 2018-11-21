class CreateMachineIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_issues do |t|
      t.integer :location_machine_id
      t.string :description
      t.boolean :resolved, :default => false
      t.timestamps
    end
  end
end
