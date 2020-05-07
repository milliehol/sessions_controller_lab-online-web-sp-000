class SessionsController < ApplicationController
  def new
  end
  
  def destroy
  session.delete :username
  session.delete :username
  end
  
   def create
        session[:username] = params[:username]
        redirect_to '/'
        
         if !params[:name] || params[:name].empty?
        redirect_to '/'
    end
end
