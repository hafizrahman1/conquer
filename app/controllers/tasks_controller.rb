class TasksController < ApplicationController

  def new
    @task = Task.new
    @task.jobs.build
    @task.jobs.build
    @task.jobs.build

    @fear = Fear.find_by_id(params[:id])
  end

  def show
    @task = Task.find_by_id(params[:id])
  end

  def update
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      # flash[:message] = "Error please try again"
      render :new
    end
  end


  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :fear_id, jobs_attributes: [:description])
  end

end
