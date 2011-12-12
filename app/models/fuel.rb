class Fuel < ActiveRecord::Base
  has_many :fuel_intakes
  has_many :fuel_refills
end
