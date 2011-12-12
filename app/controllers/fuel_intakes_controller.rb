class FuelIntakesController < ApplicationController
  def new
    @intake = FuelIntake.new
  end

  def show
    @intake = FuelIntake.find(params[:id])
  end

  def index
    @fuel_intakes = FuelIntake.all

  end

  def edit
    @intake = FuelIntake.find(params[:id])
  end

  def update

    @intake = FuelIntake.find(params[:id])

    if @intake.update_attributes(params[:fuel_intake])
      flash[:success] = "Your details have been updated"
      redirect_to @member
    else
      @title = "Edit FuelIntake"
      render "edit"
    end

  end

  def create

    #params[:fuel_intake][:profile_attributes][:fName]= params[:intake][:profile_attributes][:fName].downcase.capitalize#change casing to lower case before save. 
    @intake = FuelIntake.new(params[:fuel_intake])

    if @intake.save
      flash[:success] = "New intake created"
      redirect_to @intake
    else

      flash[:error] = "Oops something went wrong"
      @title = "New FuelIntake"
      render "new"
    end

  end

end
