class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end


  def create
    @equipment = Equipment.new(params[:equipment])

    if @equipment.save
      flash[:success] = "New equipment created"
      redirect_to @equipment
    else

      flash[:error] = "Oops something went wrong"
      @title = "New equipment"
      render "new"
    end

  end

  def update

    @equipment = Equipment.find(params[:id])

    if @equipment.update_attributes(params[:equipment])
      flash[:success] = "Your details have been updated"
      redirect_to @equipment
    else
      @title = "Edit equipment"
      render "edit"
    end
  end

  def index
    #@equipments = Equipment.all
    @equipments = Equipment.where("registration_no like ?", "#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json{render :json => @equipments.collect{|equipment|{:id=>equipment.id, :name=>equipment.registration_no}}}
    end

  end

end
