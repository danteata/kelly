ActiveAdmin.register Driver do

  menu :parent => "Employees"
  controller do
    def new
      @driver = Driver.new
      @driver.build_profile
      @driver.build_contact
      @driver.build_image
      new!
    end

    def create
      @driver = Driver.new params[:driver]
      #@driver.build_profile unless @driver.profile
      create!
    end
  end
  form :partial => "form"
end
