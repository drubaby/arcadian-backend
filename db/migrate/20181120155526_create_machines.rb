class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :manufacture_date
      t.string :opdb_id
      t.integer :ipdb_id

      t.timestamps
    end
  end
end
