ActiveAdmin.register Driver do

  menu :parent => "Employees", :priority => 1
  controller do
    #layout "active_admin"
    def new
      @driver = Driver.new
      @new_profile = @driver.build_profile
      @new_contact = @driver.build_contact
      @new_image = @driver.build_image
      new!
    end

    def create
      @driver = Driver.new params[:driver]
      ##@driver.build_profile unless @driver.profile
      #create!
    end
  end
  form :partial => "form"
end
