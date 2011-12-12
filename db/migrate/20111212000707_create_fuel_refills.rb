class CreateFuelRefills < ActiveRecord::Migration
  def change
    create_table :fuel_refills do |t|
      t.integer :fuel_id
      t.decimal :quantity
      t.decimal :price_per_litre

      t.timestamps
    end
  end
end
