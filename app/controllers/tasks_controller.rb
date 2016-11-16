class TasksController < ApplicationController

  def new
    @task = Task.new
    @fear = Fear.find_by_id(params[:id])
  end

  def show
    @task = Task.find_by_id(params[:id])
  end

  def update
  end

  def create

  end


  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:jobs => [])
  end

end
