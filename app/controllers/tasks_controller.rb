class TasksController < ApplicationController

  def new
    @task = Task.new
    @fear = Fear.find_by_id(params[:id])
  end

  def show
    @task = Task.find_by_id(params[:id])
  end


  def create

    @task = Task.new(task_params)
    binding.pry

  end


  def update
  end


  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:jobs => [])
  end

end
