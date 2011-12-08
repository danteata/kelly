class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fName
      t.string :oName
      t.string :lName
      t.date :dob
      t.date :dateEmployed
      t.integer :empId
      t.string :gender

      t.timestamps
    end
  end
end
