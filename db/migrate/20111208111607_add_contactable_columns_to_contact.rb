class AddContactableColumnsToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :contactable_id, :integer
    add_column :contacts, :contactable_type, :string
  end
end
