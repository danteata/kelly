class Manager < ActiveRecord::Base
  has_one :profile, :as => :profileable, :dependent => :destroy

  has_attached_file :photo, :styles => {:medium => "300 * 300>", 
                        :thumb => "100* 100>"}
end
