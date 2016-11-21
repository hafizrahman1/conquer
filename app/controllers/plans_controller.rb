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
    @average_rating = @plan.average_rating
    @plans_ratings = @plan.ratings
    @plans_comments = @plan.plans_comments
  end

  def index
    @fears = Fear.all
  end

  def update
    @plan = Plan.find_by_id(params[:id])
    @plan.update(plan_params)
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

  private

  def plan_params
    params.require(:plan).permit(:name, :fear_id, jobs_attributes: [:description])
  end

end
