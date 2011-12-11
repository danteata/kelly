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
      redirect_to @member
    else
      @title = "Edit equipment"
      render "edit"
    end
  end

end
