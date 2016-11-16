class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
    @tasks = @user.tasks
  end


  def addTask
    @user = current_user
    @task = find_by_id(params[:id])
    @user.tasks << @task
    flash[:message] = "You have succesfully added a new plan!"
    redirect_to user_path(@user)
  end


end
