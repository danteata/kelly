ActiveAdmin.register FuelIntake do

  controller do
    def new
      @intake = FuelIntake.new
      new!
    end
  end
  
  form :partial => "form"
end
