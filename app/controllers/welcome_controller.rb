class WelcomeController < ApplicationController

  # before_filter :authenticate_user!, except: [:index]
  
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end




end
