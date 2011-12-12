class CreateFuels < ActiveRecord::Migration
  def change
    create_table :fuels do |t|
      t.string :name
      t.integer :total_qty, :scale => 2, :null => false, :default => 0
      t.integer :price_per_litre

      t.timestamps
    end
  end
end
