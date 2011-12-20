ActiveAdmin.register FuelIntake do

  controller do
    layout "active_admin"
    def new
      @intake = FuelIntake.new
      new!
    end

    def show
      @intake = FuelIntake.find params[:id]
      #show!
    end
  end
  
  form :partial => "form"
end
