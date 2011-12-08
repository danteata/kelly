class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :asset_code
      t.text :description
      t.string :asset_subclass
      t.string :product_pin
      t.string :model
      t.string :registration_no
      t.integer :num_of_tyres

      t.timestamps
    end
  end
end
