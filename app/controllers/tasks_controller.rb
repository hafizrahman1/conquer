class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def show
    @task = Task.find_by_id(params[:id])
  end


  def create
    binding.pry
    # @task = Task.create(task_params)
  end


  def update
  end


  def destroy
  end
end
