class FuelManagersController < ApplicationController
  def new
    @manager = FuelManager.new
    @manager.build_profile #create new instance of nested has_one profile 
    @manager.build_contact #create new instance of nested has_one contact
    @manager.build_image #create new instance of nested has_one image
  end

  def show
    @manager = FuelManager.find(params[:id])
  end

  def index

  end

  def edit
    @manager = FuelManager.find(params[:id])
  end

  def update

    @manager = FuelManager.find(params[:id])

    if @manager.update_attributes(params[:manager])
      flash[:success] = "Your details have been updated"
      redirect_to @member
    else
      @title = "Edit FuelManager"
      render "edit"
    end

  end

  def create

    #params[:fuel_manager][:profile_attributes][:fName]= params[:manager][:profile_attributes][:fName].downcase.capitalize#change casing to lower case before save. 
    @manager = FuelManager.new(params[:fuel_manager])

    if @manager.save
      flash[:success] = "New manager created"
      redirect_to @manager
    else

      flash[:error] = "Oops something went wrong"
      @title = "New FuelManager"
      render "new"
    end

  end

end
