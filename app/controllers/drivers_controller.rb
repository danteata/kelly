class DriversController < ApplicationController

  def new
    @driver = Driver.new
    @driver.build_profile
    @driver.build_contact
    @driver.build_image
    #@driver.contact.build
    #@driver.image.build
    #@profile = @driver.profile ||= Profile.new
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update

    @driver = Driver.find(params[:id])

    if @driver.update_attributes(params[:driver])
      flash[:success] = "Your details have been updated"
      redirect_to @driver
    else
      @title = "Edit driver"
      render "edit"
    end

  end

  def create

    #params[:driver][:user_name]= params[:driver][:user_name].downcase.capitalize#change casing to lower case before save. 
    #@driver = Driver.new
    #@driver.profile = params[:driver][:profile]
    #@driver.contact = params[:driver][:contact]
    #@driver.image = params[:driver][:image]
    @driver = Driver.new(params[:driver])
    #@new_profile.save
    #@new_contact.save
    #@new_image.save

    #@driver.build_profile unless @driver.profile
    #@driver.build_contact unless @driver.contact
    #@driver.build_image unless @driver.image

    if @driver.save
      logger.debug "Driver should have a name #{@driver.profile.valid?}"
      flash[:success] = "New driver created"
      redirect_to @driver
    else

      flash[:error] = "Oops something went wrong"
      @title = "New driver"
      render "new"
    end

  end

  def index
    #@drivers = Driver.all
    @drivers = Driver.includes(:profile).where("profiles.fName like ?", "#{params[:q]}%").paginate(:page => params[:page], :per_page => 3)
    #@drivers = Driver.find(:all, :include => :profile, :conditions => ['profiles.fName LIKE ?', "%#{params[:q]}%"])
    respond_to do |format|
      format.html
      #format.json{render :json => @drivers.collect{|driver|{:id=>driver.id, :name=>driver.profile.fName}}}
      format.json{render :json => @drivers.collect{|driver|{:id=>driver.id, :name=>driver.profile.full_name}}}
    end
  end

end
