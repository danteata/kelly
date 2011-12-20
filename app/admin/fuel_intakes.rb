ActiveAdmin.register FuelIntake do

  controller do
    layout "active_admin", :only =>[:show] #use active admin layout on only custom views to avoid layout duplication learnt it the hard way 
    def new
      @intake = FuelIntake.new
      new!
    end

    index do
      column(:name) {|i| best_in_place i, :name, :type => :input, :path =>[:admin, i]}
    end

    def edit 
      @intake = FuelIntake.find params[:id]
    end

    def show
      @intake = FuelIntake.find params[:id]
      #show!
    end
  end
  
  form :partial => "form"
end
