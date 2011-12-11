class CreateFuelManagers < ActiveRecord::Migration
  def change
    create_table :fuel_managers do |t|
      t.string :user_name
      t.string :password_digest

      t.timestamps
    end
  end
end
