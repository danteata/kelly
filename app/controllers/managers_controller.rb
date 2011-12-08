class ManagersController < ApplicationController

  def new
    @manager = Manager.new
    @profile = @manager.profile ||= Profile.new
  end

  def show
    @manager = Manager.find(params[:id])
  end

  def edit
    @manager = Manager.find(params[:id])
  end

  def update

    @manager = Manager.find(params[:id])

    if @manager.update_attributes(params[:manager])
      flash[:success] = "Your details have been updated"
      redirect_to @member
    else
      @title = "Edit Manager"
      render "edit"
    end

  end

  def create

    params[:manager][:user_name]= params[:member][:user_name].downcase.capitalize#change casing to lower case before save. 
    @manager = Manager.new(params[:manager])

    if @manager.save
      flash[:success] = "New manager created"
      redirect_to @manager
    else

      flash[:error] = "Oops something went wrong"
      @title = "New Manager"
      render "new"
    end

  end

end
