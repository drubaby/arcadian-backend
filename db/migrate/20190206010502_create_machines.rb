class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.integer :location_id
      t.integer :user_id
      t.integer :machine_type_id
      t.boolean :is_working
    end
  end
end
