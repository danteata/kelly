class Image < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true

  has_attached_file :file, :styles => {:medium => "300 * 300>", 
                        :thumb => "100* 100>"}
end
