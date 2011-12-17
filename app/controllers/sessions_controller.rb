class SessionsController < ApplicationController

  def new

  end

  def create

    contact = Contact.find_by_email params[:email]

    #if contact.contactable_type = "Manager"
      #contactable = Manager.find(contact.contactable_id)
    #else if contact.contactable_type = "Supervisor"
      #contactable = Supervisor.find(contact.contactable_id)
    #end

    contactable = find_contactable contact unless contact.nil? #find the person having that contact 

    if contactable and contactable.authenticate (params[:password]) # authenticated?
      session[:user_id] = contactable.id
      session[:user_type] = contact.contactable_type
      redirect_to contactable
    else
      flash.now.alert = "invalid email or password"
      render "new"
    end

  end

  def destroy
     #set sessions to nil 
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to root_path

  end

end
