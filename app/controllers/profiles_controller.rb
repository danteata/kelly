class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def show
    @profileable = find_profileable #finds the manager, driver etc whose profile is being sought for.
  end

  def index
  end

  def edit
  end

  
  def find_profileable
    params.each do |name, value|
      if !name.blank? &&  name =~ /(.+)_id$/ #loop throught the parameters and search for one with *_id 
        id_param = $1.classify.constantize.find(value)
        return profileable = id_param 
      end
    end
    nil
  end

end
