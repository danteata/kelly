class AddAttachmentPhotoToManagers < ActiveRecord::Migration
  def change
    add_column :managers, :photo_file_name, :string
    add_column :managers, :photo_content_type, :string
    add_column :managers, :photo_file_size, :integer
    add_column :managers, :photo_updated_at, :datetime
  end
end
