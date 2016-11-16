class SessionsController < ApplicationController


    def destroy
      session.clear
      redirect_to new_user_session_path
    end




end
