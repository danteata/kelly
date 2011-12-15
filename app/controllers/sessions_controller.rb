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

    contactable = find_contactable contact unless contact.nil?

    if contactable and contactable.authenticate (params[:password]) # authenticated?
      session[:user_id] = contactable.id
      redirect_to contactable
    else
      flash.now.alert = "invalid email or password"
      render "new"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path

  end

end
