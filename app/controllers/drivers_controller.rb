class DriversController < ApplicationController

  def new
    @driver = Driver.new
    @profile = @driver.profile ||= Profile.new
  end

  def show
    @driver = driver.find(params[:id])
  end

  def edit
    @driver = driver.find(params[:id])
  end

  def update

    @driver = driver.find(params[:id])

    if @driver.update_attributes(params[:driver])
      flash[:success] = "Your details have been updated"
      redirect_to @member
    else
      @title = "Edit driver"
      render "edit"
    end

  end

  def create

    params[:driver][:user_name]= params[:member][:user_name].downcase.capitalize#change casing to lower case before save. 
    @driver = Driver.new(params[:driver])

    if @driver.save
      flash[:success] = "New driver created"
      redirect_to @driver
    else

      flash[:error] = "Oops something went wrong"
      @title = "New driver"
      render "new"
    end

  end

  def index
  end

end
