class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
  end

  def show
    @user = User.find_by_id(params[:id])
    @tasks = @user.tasks
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    redirect_to @user
  end


  def addTask
    @user = current_user
    @task = find_by_id(params[:id])
    @user.tasks << @task
    flash[:message] = "You have succesfully added a new plan!"
    redirect_to user_path(@user)
  end



  private

    def user_params
      params.require(:user).permit(:age, :weight, :height, :name, :bio)
    end

end
