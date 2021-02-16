class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
        if params[:login][:username] 
            session[:username] = params[:login][:username]
            redirect_to show_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :username
      end 
end 