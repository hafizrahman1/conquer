class UserPlansController < ApplicationController

  def create
  end

  def update
    @user_plan = UserPlan.find_by(id: params[:id])
    @user_plan.update(user_plan_params)
    redirect_to @user_plan
  end

  def show
    @user_plan = UserPlan.find_by(id: params[:id].to_i)
    @plan = Plan.find_by_id(@user_plan.plan_id)
    @user = User.find_by_id(@user_plan.user_id)
  end


  private

    def user_plan_params
      params.require(:user_plan).permit(:comment, :rating)
    end

end
