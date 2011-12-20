class FuelIntake < ActiveRecord::Base
  scope :over_five_hundred, where("distance_covered > 500")
  belongs_to :fuel
  belongs_to :equipment
  belongs_to :employee, :class_name => "Driver"
  attr_reader :employee_token
  attr_reader :equipment_token
  attr_reader :fuel_token


  def employee_token=(id)
    self.employee_id = id
  end

  def equipment_token=(id)
    self.equipment_id = id
  end

  def fuel_token=(id)
    self.fuel_id = id
  end
end
