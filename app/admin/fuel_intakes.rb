ActiveAdmin.register FuelIntake do
    scope :over_five_hundred

    index do
      column(:id, :sortable => :id) {|i| best_in_place i, :id, :type => :input, :path =>[:admin, i]}
      column(:employee, :sortable => :employee) {|i| best_in_place i, :employee, :type => :input, :path =>[:admin, i]}
      column(:equipment, :sortable => :equipment) {|i| best_in_place i, :equipment, :type => :input, :path =>[:admin, i]}
      column(:fuel, :sortable => :fuel) {|i| best_in_place i, :fuel, :type => :input, :path =>[:admin, i]}
      column(:quantity, :sortable => :quantity) {|i| best_in_place i, :quantity, :type => :input, :path =>[:admin, i]}
      column(:location, :sortable => :location) {|i| best_in_place i, :location, :type => :input, :path =>[:admin, i]}
      column(:distance_covered, :sortable => :distance_covered) {|i| best_in_place i, :distance_covered, :type => :input, :path =>[:admin, i]}
      column(:price_per_litre, :sortable => :price_per_litre) {|i| best_in_place i, :price_per_litre, :type => :input, :path =>[:admin, i]}
      column(:total_price, :sortable => :total_price)  do |fuel_intake| #computed column of the total price of fuel 
        total_price = fuel_intake.price_per_litre * fuel_intake.quantity
        div :class => "total_price" do #for easy formating and ajaxy stuffs 
          number_to_currency total_price
        end
      end

      default_actions #re-displays the view, edit and delete links 
    end

  controller do
    layout "active_admin", :only =>[:show] #use active admin layout on only custom views to avoid layout duplication learnt it the hard way 
    def new
      @intake = FuelIntake.new
      new!
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
