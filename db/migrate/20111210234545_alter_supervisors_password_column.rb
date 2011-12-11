class AlterSupervisorsPasswordColumn < ActiveRecord::Migration
  def up
    rename_column :supervisors, :password, :password_digest
  end
end
