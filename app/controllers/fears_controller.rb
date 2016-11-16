class FearsController < ApplicationController

  def new
    @fear = Fear.new
  end

  def show
    @fear = Fear.find_by_id(params[:id])
  end


  def create
    @fear = Fear.find_by_id(params[:id])
  end


  def update
  end


  def destroy
  end

end
