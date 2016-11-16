class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def show
    @task = Task.find_by_id(params[:id])
  end


  def create
    @task = Task.find_by_id(params[:id])
    @task.new(fear_params)
    # if fear.save
    #
  end


  def update
  end


  def destroy
  end
end
