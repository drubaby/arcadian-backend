class CreateLocationMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :location_machines do |t|
      t.integer :location_id, :default => nil
      t.integer :machine_id

      t.timestamps
    end
  end
end
