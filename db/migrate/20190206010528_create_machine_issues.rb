class CreateMachineIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_issues do |t|
      t.integer :machine_id
      t.string :description
      t.boolean :resolved, default: false
    end
  end
end
