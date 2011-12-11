class Driver < ActiveRecord::Base

  has_one :profile, :as => :profileable, :dependent => :destroy
  has_one :image, :as => :imageable, :dependent => :destroy
  has_one :contact, :as => :contactable, :dependent => :destroy

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :contact
  accepts_nested_attributes_for :image


end
