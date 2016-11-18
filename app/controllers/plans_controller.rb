class PlansController < ApplicationController

  def new
    @plan = Plan.new
    @plan.jobs.build
    @plan.jobs.build
    @plan.jobs.build

    @fear = Fear.find_by_id(params[:id])
  end

  def show
    @plan = Plan.find_by_id(params[:id])
  end

  def update
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plan_path(@plan)
    else
      # flash[:message] = "Error please try again"
      render :new
    end
  end


  def destroy
  end

  def forums
    # get the completed plans
    @plans = 
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :fear_id, jobs_attributes: [:description])
  end

end
