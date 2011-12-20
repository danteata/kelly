class Equipment < ActiveRecord::Base
  has_many :fuel_intakes
  has_many :activities

  def to_s
    registration_no
  end
end
