class FearsController < ApplicationController

  def index
    @fears = Fear.all
  end

  def new
    @fear = Fear.new
  end

  def show
    @fear = Fear.find_by_id(params[:id])
  end

end
