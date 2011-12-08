class Profile < ActiveRecord::Base
  belongs_to :profileable, :polymorphic => true


  def full_name
    [fName, lName].join " "
  end

end
