class FuelsController < ApplicationController

  def index 
    @fuels = Fuel.all
    respond_to do |format|
      format.html
      format.json{render :json => @fuels.map(&:attributes)}
    end
  end
  def new
    @fuel = Fuel.new
  end

  def show
    @fuel = Fuel.find(params[:id])
  end

  def edit
    @fuel = Fuel.find(params[:id])
  end


  def create
    @fuel = Fuel.new(params[:fuel])

    if @fuel.save
      flash[:success] = "New fuel created"
      redirect_to @fuel
    else

      flash[:error] = "Oops something went wrong"
      @title = "New fuel"
      render "new"
    end

  end

  def update

    @fuel = Fuel.find(params[:id])

    if @fuel.update_attributes(params[:fuel])
      flash[:success] = "Your details have been updated"
      redirect_to @fuel
    else
      @title = "Edit fuel"
      render "edit"
    end
  end

end
