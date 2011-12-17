class Activity < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :supervisor
  belongs_to :driver
  attr_reader :employee_token
  attr_reader :equipment_token
  attr_reader :supervisor_token


  def employee_token=(id)
    self.driver_id = id
  end

  def equipment_token=(id)
    self.equipment_id = id
  end

  def supervisor_token=(id)
    self.supervisor_id = id
  end

end
