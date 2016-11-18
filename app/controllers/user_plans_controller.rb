class UserPlansController < ApplicationController
  def update
  end

  def show
    @user_plan = UserPlan.find_by(id: params[:id].to_i)
  end

end
