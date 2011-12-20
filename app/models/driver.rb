class Driver < ActiveRecord::Base

  has_one :profile, :as => :profileable, :dependent => :destroy
  has_one :image, :as => :imageable, :dependent => :destroy
  has_one :contact, :as => :contactable, :dependent => :destroy
  has_many :fuel_intakes
  has_many :activities

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :contact
  accepts_nested_attributes_for :image

  def to_s #display profile of driver(specifically full_name as implemented in to_string of profile model) 
    profile
  end

end
