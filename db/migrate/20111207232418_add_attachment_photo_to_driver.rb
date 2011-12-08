class AddAttachmentPhotoToDriver < ActiveRecord::Migration
  def change
    add_column :drivers, :photo_file_name, :string
    add_column :drivers, :photo_content_type, :string
    add_column :drivers, :photo_file_size, :integer
    add_column :drivers, :photo_updated_at, :datetime
  end
end
