class PlotsController < ApplicationController
  def create
    render json: Plot.create!(plot_params) 
  end
  def index
    render json: Plot.all
  end
  def show
    render json: Plot.find(params[:id])
  end

  private
  def plot_params
    params.require(:plot).permit(:name)
  end
end