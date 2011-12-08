class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :email
      t.string :home

      t.timestamps
    end
  end
end
