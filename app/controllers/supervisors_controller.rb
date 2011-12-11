class SupervisorsController < ApplicationController
  def new
    @supervisor = Supervisor.new
    @supervisor.build_profile
    @supervisor.build_contact
    @supervisor.build_image
  end

  def show
    @supervisor = Supervisor.find(params[:id])
  end

  def edit
    @supervisor = Supervisor.find(params[:id])
  end

  def update

    @supervisor = Supervisor.find(params[:id])

    if @supervisor.update_attributes(params[:supervisor])
      flash[:success] = "Your details have been updated"
      redirect_to @member
    else
      @title = "Edit supervisor"
      render "edit"
    end

  end

  def create

    #params[:supervisor][:user_name]= params[:member][:user_name].downcase.capitalize#change casing to lower case before save. 
    @supervisor = Supervisor.new(params[:supervisor])

    if @supervisor.save
      flash[:success] = "New supervisor created"
      redirect_to @supervisor
    else

      flash[:error] = "Oops something went wrong"
      @title = "New supervisor"
      render "new"
    end

  end

  def index
  end

end
