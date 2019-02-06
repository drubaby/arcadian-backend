class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.integer :location_id, default: nil
      t.integer :user_id, default: nil
      t.integer :machine_type_id
      t.boolean :is_working, default: true
    end
  end
end
