class Supervisor < ActiveRecord::Base
  has_one :profile, :as => :profileable

  has_attached_file :photo, :styles =>{:medium=> "300*300>"}
end
