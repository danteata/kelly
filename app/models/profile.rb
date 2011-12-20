class Profile < ActiveRecord::Base
  belongs_to :profileable, :polymorphic => true
  attr_reader :full_name


  def full_name
    [fName, lName].join " "
  end

end
