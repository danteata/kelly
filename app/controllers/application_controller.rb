class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def find_profileable
    params.each do |name, value|
      if !name.blank? &&  name =~ /(.+)_id$/ #loop throught the parameters and search for one with *_id 
        id_param = $1.classify.constantize.find(value)
        return profileable = id_param 
      end
    end
    nil
  end

  #def find_contactable
    #params.each do |name, value|
      #if !name.blank? &&  name =~ /(.+)_id$/ #loop throught the parameters and search for one with *_id 
        #id_param = $1.classify.constantize.find(value)
        #return contactable = id_param 
      #end
    #end
    #nil
  #end
 #def find_contactable contact
   #contact.attributes.each_pair do |name, value|
      #if !name.blank? &&  name =~ /(.+)_id$/ #loop throught the parameters and search for one with *_id 
        #id_param = $1.classify.constantize.find(value)
        #return contactable = id_param 
      #end
    #end
    #nil
  #end

 def find_contactable contact
   contactable_type = contact.contactable_type
   id_param = contactable_type.classify.constantize.find(contact.contactable_id)
   return contactable = id_param
 end

  def find_imageable
    params.each do |name, value|
      if !name.blank? &&  name =~ /(.+)_id$/ #loop throught the parameters and search for one with *_id 
        id_param = $1.classify.constantize.find(value)
        return imageable = id_param 
      end
    end
    nil
  end

  helper_method :current_user

  helper_method :find_profileable
  helper_method :find_contactable
  #helper_method :find_contactable contact
  helper_method :find_imageable
end
