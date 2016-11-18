class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
    @plans = @user.plans
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.jobs_completion(params[:user][:job])
    @user.update(user_params)
    redirect_to @user
  end

  def addPlan
    @user = current_user
    @plan = Plan.find_by_id(params[:id])
    @user.plans << @plan
    @plan.jobs.each do |job|
      @user.jobs << job
    end
    flash[:message] = "You have succesfully added a new plan!"
    redirect_to user_path(@user)
  end


  private

    def user_params
      params.require(:user).permit(:age, :weight, :height, :name, :bio, :job_ids, :gender)
    end

end
