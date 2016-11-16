class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
    # @tasks = @user.tasks
  end





end
