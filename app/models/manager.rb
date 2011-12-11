class Manager < ActiveRecord::Base
  has_secure_password #adds password accessor password_confirmation and authentication fxn. 
  has_one :profile, :as => :profileable, :dependent => :destroy
  has_one :contact, :as => :contactable, :dependent => :destroy
  has_one :image, :as=> :imageable, :dependent =>:destroy

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :contact
  accepts_nested_attributes_for :image

  validates_presence_of :password, :on => :create
  #validates :password, :presence => true

end
