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
        
        return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    end
end
