class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.integer :driver_id
      t.integer :equipment_id
      t.integer :supervisor_id
      t.string :location
      t.text :purpose
      t.datetime :time_out
      t.datetime :time_in

      t.timestamps
    end
  end
end
