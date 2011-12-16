class Equipment < ActiveRecord::Base
  has_many :fuel_intakes
  has_many :activities
end
