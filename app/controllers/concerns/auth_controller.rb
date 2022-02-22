class AuthController < ApplicationController
    # def login
    #   render :login
    # end
    def new
      render :login
    end
    def create
      user = User.find_by(membership: params[:membership],password: params[:password])
    
      if user 
        log_in user
        redirect_to '/reserve'
      else
        render :login
      end
    end
  end