class CreateFuelIntakes < ActiveRecord::Migration
  def change
    create_table :fuel_intakes do |t|
      t.integer :fuel_id
      t.decimal :quantity
      t.decimal :price_per_litre
      t.integer :distance_covered
      t.integer :equipment_id
      t.integer :employee_id
      t.string :location

      t.timestamps
    end
  end
end
