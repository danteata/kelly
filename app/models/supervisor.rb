class Supervisor < ActiveRecord::Base
  has_secure_password
  has_one :profile, :as => :profileable
  has_one :contact, :as => :contactable
  has_one :image, :as => :imageable

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :contact
  accepts_nested_attributes_for :image

  validates_presence_of :password, :on => :create

end
