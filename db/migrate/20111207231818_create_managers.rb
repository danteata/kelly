class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :password_digest
      t.string :user_name

      t.timestamps
    end
  end
end
