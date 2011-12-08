class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.integer :equipment_id
      t.integer :supervisor_id

      t.timestamps
    end
  end
end
