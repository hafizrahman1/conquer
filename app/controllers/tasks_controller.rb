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
    binding.pry
  end


  def destroy
  end

  private

  def task_params
    params.require(:task).permit(jobs_attributes: [:description])
  end

end
