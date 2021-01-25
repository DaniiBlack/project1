class ResourcesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  private
  def work_params #strong params
    params.require(:resource).permit(:title, :type, :description, :image)
  end
end
